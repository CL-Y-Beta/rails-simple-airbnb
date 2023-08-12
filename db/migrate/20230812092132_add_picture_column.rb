class AddPictureColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :picture, :string
  end
end
