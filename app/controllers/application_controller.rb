class ApplicationController < ActionController::Base
  before_action :authenticate_admin!, unless: :devise_or_public_pages?
  protect_from_forgery with: :exception
  helper_method :resource_name, :resource, :devise_mapping, :resource_class

  private

  def devise_or_public_pages?
    devise_controller? || (params[:controller] == 'pages' && params[:action].in?(%w[home services]))
  end
end
