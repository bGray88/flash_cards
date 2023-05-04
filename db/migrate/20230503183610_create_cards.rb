class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :question, null: false
      t.string :answer, null: false
      t.integer :calc_type, null: false
      t.references :deck, foreign_key: true

      t.timestamps
    end
  end
end
