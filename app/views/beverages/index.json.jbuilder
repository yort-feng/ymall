json.array!(@beverages) do |beverage|
  json.extract! beverage, :id, :image, :name, :price, :memo
  json.url beverage_url(beverage, format: :json)
end
