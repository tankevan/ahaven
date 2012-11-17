class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :read_status

      t.timestamps
    end
  end
end
