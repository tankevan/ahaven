class AddUserIdToAccman < ActiveRecord::Migration
  def change
  	add_column :accmen, :user_id, :integer
  end
end
