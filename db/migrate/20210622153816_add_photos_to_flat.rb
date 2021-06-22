class AddPhotosToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :photos, :string, array: true, default: []
  end
end
