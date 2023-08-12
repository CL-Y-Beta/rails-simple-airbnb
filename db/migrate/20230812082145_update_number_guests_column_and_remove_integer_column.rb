class UpdateNumberGuestsColumnAndRemoveIntegerColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :listings, :number_of_guests, :integer
    remove_column :listings, :integer
  end
end
