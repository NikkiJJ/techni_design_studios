class ApplicationController < ActionController::Base
  before_action :authenticate_admin!, unless: :devise_or_home_controller?
  protect_from_forgery with: :exception
  helper_method :resource_name, :resource, :devise_mapping, :resource_class

  private

  def devise_or_home_controller?
    devise_controller? || (params[:controller] == 'pages' && params[:action] == 'home')
  end
end
