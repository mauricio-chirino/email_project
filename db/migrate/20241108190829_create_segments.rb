class CreateSegments < ActiveRecord::Migration[7.2]
  def change
    create_table :segments do |t|
      t.references :company, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
