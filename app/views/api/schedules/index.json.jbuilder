json.array! @entries do |entry|
  json.id     entry.id
  json.title  entry.customer.name
  json.start  entry.start_time
  json.end    entry.end_time
  json.allDay @all_day
  json.backgroundColor entry.resource.color if entry.resource.color.present?
end
