class AddColumnToRoom < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :photo, :string
  end
end
