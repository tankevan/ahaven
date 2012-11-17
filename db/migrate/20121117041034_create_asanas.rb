class CreateAsanas < ActiveRecord::Migration
  def change
    create_table :asanas do |t|
      t.string :api_key

      t.timestamps
    end
  end
end
