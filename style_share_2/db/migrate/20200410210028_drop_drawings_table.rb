class DropDrawingsTable < ActiveRecord::Migration[6.0]
  def change
      drop_table :drawings do |t|
          t.string :artist, null: false
          t.string :description, null: false
          t.text :code, null: false
      end
  end
end
