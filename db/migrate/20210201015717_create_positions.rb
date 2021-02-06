class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.references :location, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
