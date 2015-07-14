json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :race, :ch_class
  json.url cat_url(cat, format: :json)
end
