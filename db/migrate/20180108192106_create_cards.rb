class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.integer :suit
      t.integer :number

      t.timestamps
    end
  end
end
