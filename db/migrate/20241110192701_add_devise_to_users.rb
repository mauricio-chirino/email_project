# frozen_string_literal: true
class AddDeviseToUsers < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      # Comentamos la línea para que no intente añadir la columna `email` de nuevo
      # t.string :email,              null: false, default: ""
      
      # Añadir cualquier otra columna requerida que no exista aún
      t.string :encrypted_password, null: false, default: "" unless column_exists?(:users, :encrypted_password)

      # Elimina o comenta cualquier columna que ya exista en la tabla `users`
      t.string   :reset_password_token if !column_exists?(:users, :reset_password_token)
      t.datetime :reset_password_sent_at if !column_exists?(:users, :reset_password_sent_at)
      t.datetime :remember_created_at if !column_exists?(:users, :remember_created_at)

      # Más campos si es necesario
    end

    # Índices para las columnas que agrega Devise, solo si no existen
    add_index :users, :email, unique: true if !index_exists?(:users, :email)
    add_index :users, :reset_password_token, unique: true if !index_exists?(:users, :reset_password_token)
  end
end
