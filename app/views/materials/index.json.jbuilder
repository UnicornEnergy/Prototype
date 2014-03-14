json.array!(@materials) do |material|
  json.extract! material, :id, :materialName, :energyProperty
  json.url material_url(material, format: :json)
end
