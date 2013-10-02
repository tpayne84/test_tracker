json.array!(@courses) do |course|
  json.extract! course, :name, :requal_interval
  json.url course_url(course, format: :json)
end
