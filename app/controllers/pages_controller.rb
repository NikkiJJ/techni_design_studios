class PagesController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:home, :services]

  def home
  end

  def services
  end
end
