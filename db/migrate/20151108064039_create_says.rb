class CreateSays < ActiveRecord::Migration
  def change
    create_table :says do |t|
      t.references :state, index: true, foreign_key: true
      t.references :audio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
