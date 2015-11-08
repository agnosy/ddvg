class CreateTransitions < ActiveRecord::Migration
  def change
    create_table :transitions do |t|
      t.string :name
      t.text :description
      t.references :from_state, index: true
      t.references :to_state, index: true
      t.string :condition

      t.timestamps null: false
    end
  end
end
