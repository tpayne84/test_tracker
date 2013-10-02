json.array!(@records) do |record|
  json.extract! record, :course_id, :score, :pass, :completed_date, :requal_date, :user_id
  json.url record_url(record, format: :json)
end
