class AddColumnToPets < ActiveRecord::Migration
  def change
    add_column :pets, :store_id, :integer
  end
end
