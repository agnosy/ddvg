class CreateListens < ActiveRecord::Migration
  def change
    create_table :listens do |t|
      t.references :state, index: true, foreign_key: true
      t.references :prompt, index: true
      t.references :help, index: true
      t.references :noinput, index: true
      t.references :nomatch, index: true
      t.string :inputtype
      t.references :grammar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
