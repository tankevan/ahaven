class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name
      t.text :applications
      t.integer :no_unread

      t.timestamps
    end
  end
end
