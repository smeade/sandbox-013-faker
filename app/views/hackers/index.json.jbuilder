json.array!(@hackers) do |hacker|
  json.extract! hacker, :id, :name, :app_name, :say_something_smart
  json.url hacker_url(hacker, format: :json)
end
