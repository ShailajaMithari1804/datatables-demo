json.extract! product, :id, :productName, :category, :releaseDate, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
