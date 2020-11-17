class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.integer :age
      t.string :gender
      t.boolean :alive

      t.timestamps
    end
  end
end
