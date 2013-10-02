CSV.foreach("./boots.csv") do |row|
	students = User.all
	clients = Client.all
	courses = Course.all

	values = row.split(",")

	c = Course.where(:name => values[0])
	if c.nil?
		c = Course.create(:name => values[0], :requal_interval => 12)
	end
	
	u = User.where(:first_name => values[1], :last_name => values[2])
	if u.nil?
		u = User.create(:first_name => values[1], :last_name => values[2], :client_id => 1)
	end

	if values[6] = "P"
		p = true
	else
		p = false
	end

	dc = date = Date.parse values[4]


	Record.create(:course_id => c.id, :score => values[7].to_i,:pass => p, :date_completed => dc, :user_id => u.id)
end