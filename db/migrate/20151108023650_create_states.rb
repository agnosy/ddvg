class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.text :description
      t.string :type
      t.references :campaign, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
