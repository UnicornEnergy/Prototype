json.array!(@customers) do |customer|
  json.extract! customer, :id, :salutation_id, :firstName, :lastName
  json.url customer_url(customer, format: :json)
end
