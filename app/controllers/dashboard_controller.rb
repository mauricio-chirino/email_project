# app/controllers/dashboard_controller.rb
class DashboardController < ApplicationController
  before_action :authorize_admin

  def index
    # Lógica del dashboard
  end

  private

  def authorize_admin
    redirect_to(root_path, alert: "No tienes acceso a esta sección") unless current_user.admin?
  end
end