json.extract! listing, :id, :name, :address, :description, :price_per_night, :number_of_guests, :integer, :created_at, :updated_at
json.url listing_url(listing, format: :json)
