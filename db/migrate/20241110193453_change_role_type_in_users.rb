class ChangeRoleTypeInUsers < ActiveRecord::Migration[7.0]
  def up
    # Cambia la columna `role` de `integer` a `string`
    change_column :users, :role, :string
  end

  def down
    # Define lo que pasa si se revierte la migración, regresando el tipo de `role` a `integer`
    change_column :users, :role, :integer
  end
end