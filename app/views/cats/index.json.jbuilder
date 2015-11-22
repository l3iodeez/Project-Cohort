json.array!(@cats) do |cat|
  json.extract!(
  cat,
  :id, :name, :race, :catClasses, :created_at, :updated_at
  )
end
