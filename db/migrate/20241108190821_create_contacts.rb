class CreateContacts < ActiveRecord::Migration[7.2]
  def change
    create_table :contacts do |t|
      t.references :company, null: false, foreign_key: true
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :company_name
      t.string :industry
      t.string :tax_id
      t.string :phone
      t.string :mobile
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
