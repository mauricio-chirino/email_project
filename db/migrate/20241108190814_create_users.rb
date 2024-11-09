class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.references :company, null: false, foreign_key: true
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :role

      t.timestamps
    end
  end
end
