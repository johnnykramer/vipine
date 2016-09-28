class CreatePairs < ActiveRecord::Migration[5.0]
  def change
    create_table :pairs do |t|
      t.integer :port
      t.string :password

      t.timestamps
    end
  end
end
