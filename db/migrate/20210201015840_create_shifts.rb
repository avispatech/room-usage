class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.references :day, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
