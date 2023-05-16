class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.integer :calc_type, null: false
      t.string :number_1, null: false
      t.string :number_2, null: false
      t.string :operator, null: false
      t.string :answer, null: false
      t.references :deck, foreign_key: true

      t.timestamps
    end
  end
end
