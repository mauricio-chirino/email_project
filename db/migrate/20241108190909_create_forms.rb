class CreateForms < ActiveRecord::Migration[7.2]
  def change
    create_table :forms do |t|
      t.references :campaign, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
