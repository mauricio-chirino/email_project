class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern



  before_action :authenticate_user!



  # Asegura la protección CSRF en todas las solicitudes
  protect_from_forgery with: :exception

  protected

  # Redirige al dashboard si el usuario es administrador
  def after_sign_in_path_for(resource)
    resource.admin? ? admin_root_path : root_path
  end


end
