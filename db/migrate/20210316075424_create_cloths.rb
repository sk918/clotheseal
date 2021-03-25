class CreateCloths < ActiveRecord::Migration[6.0]
  def change
    create_table :cloths do |t|
      t.string :wear_day, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
