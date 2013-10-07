class User < ActiveRecord::Base
	include PgSearch
	multisearchable :against => [:first_name, :last_name, :full_name]

	belongs_to :client
	has_many :records
	belongs_to :group

	default_scope :order => 'users.first_name ASC, users.last_name ASC'
	scope :by_client, ->(id) { where(:client_id => id)}

	def full_name
	@full_name = "#{first_name} #{last_name}"
	end
  
	def self.text_search(query)
	  if query.present?
	    rank = <<-RANK
	      ts_rank(to_tsvector(name), plainto_tsquery(#{sanitize(query)})) +
	      ts_rank(to_tsvector(content), plainto_tsquery(#{sanitize(query)}))
	    RANK
	    where("to_tsvector('english', name) @@ :q or to_tsvector('english', content) @@ :q", q: query).order("#{rank} desc")
	  else
	    scoped
	  end
	end

end
