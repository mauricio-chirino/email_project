class Users::RegistrationsController < Devise::RegistrationsController
  # Acción personalizada para crear un usuario
  def create
    # Verifica si es el primer usuario para asignar el rol de 'admin'
    is_first_user = User.count == 0
    @user = User.new(user_params)

    # Si es el primer usuario, asigna el rol de admin
    @user.role = is_first_user ? 'admin' : 'user'

    if @user.save
      flash[:notice] = "Usuario creado exitosamente."
      redirect_to admin_users_path # Redirige a la ruta deseada después de crear el usuario
    else
      flash[:alert] = "Error al crear el usuario. Por favor, revisa los campos."
      render :new
    end
  end

  private

  # Permite solo los parámetros necesarios para crear un usuario
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
  end







  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
