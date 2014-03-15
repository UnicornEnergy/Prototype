json.array!(@countries) do |country|
  json.extract! country, :id, :iso3166cc, :name
  json.url country_url(country, format: :json)
end
