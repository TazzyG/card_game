class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :suit
      t.integer :rank
      t.references :deck, foreign_key: true
      t.datetime :picked
      t.datetime :put_back

      t.timestamps
    end
  end
end

