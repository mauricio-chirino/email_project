class CreateAssets < ActiveRecord::Migration[7.2]
  def change
    create_table :assets do |t|
      t.references :company, null: false, foreign_key: true
      t.string :name
      t.string :file_url

      t.timestamps
    end
  end
end
