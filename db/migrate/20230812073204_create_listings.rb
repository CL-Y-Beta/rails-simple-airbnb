class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :address
      t.string :description
      t.integer :price_per_night
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
