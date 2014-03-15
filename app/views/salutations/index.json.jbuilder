json.array!(@salutations) do |salutation|
  json.extract! salutation, :id, :salutation
  json.url salutation_url(salutation, format: :json)
end
