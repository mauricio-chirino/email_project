class CreateCompanies < ActiveRecord::Migration[7.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :address
      t.string :city
      t.string :phone
      t.string :tax_id

      t.timestamps
    end
  end
end
