json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :race, :ch_class
  json.url cat_url(current_user.username, cat, format: :json)
end
