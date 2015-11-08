class CreateGrammars < ActiveRecord::Migration
  def change
    create_table :grammars do |t|
      t.string :src
      t.text :text
      t.text :description

      t.timestamps null: false
    end
  end
end
