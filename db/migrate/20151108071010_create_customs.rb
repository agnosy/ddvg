class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.references :state, index: true, foreign_key: true
      t.string :url
      t.references :next, index: true

      t.timestamps null: false
    end
  end
end
