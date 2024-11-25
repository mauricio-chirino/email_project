# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  company_id             :bigint           not null
#  email                  :string
#  first_name             :string
#  last_name              :string
#  role                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company



  # ROLE_TYPES = %w[admin user manager].freeze

  # validates :role, inclusion: { in: ROLE_TYPES }



   # Define roles
  enum role: { user: 'user', admin: 'admin' }

  # Método para verificar si el usuario es administrador
  def admin?
    role == 'admin'
  end





end
