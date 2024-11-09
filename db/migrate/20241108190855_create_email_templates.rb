class CreateEmailTemplates < ActiveRecord::Migration[7.2]
  def change
    create_table :email_templates do |t|
      t.references :campaign, null: false, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
