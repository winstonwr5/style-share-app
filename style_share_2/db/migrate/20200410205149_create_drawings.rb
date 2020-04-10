class CreateDrawings < ActiveRecord::Migration[6.0]
  def change
    create_table :drawings do |t|
      t.string :artist
      t.string :description
      t.text :code
    end
  end
end
