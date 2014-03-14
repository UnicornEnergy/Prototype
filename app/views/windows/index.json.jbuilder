json.array!(@windows) do |window|
  json.extract! window, :id, :brandname, :manufacturer_id, :layers, :material_id, :price, :price, :height, :width
  json.url window_url(window, format: :json)
end
