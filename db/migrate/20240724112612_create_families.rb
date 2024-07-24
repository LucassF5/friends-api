class CreateFamilies < ActiveRecord::Migration[7.1]
  def change
    create_table :families do |t|
      t.string :name
      t.string :kinship
      t.integer :age
      t.references :friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
