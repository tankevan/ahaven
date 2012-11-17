class AddAccmanIdToAsana < ActiveRecord::Migration
  def change
  	add_column :asanas, :accman_id, :integer
  end
end
