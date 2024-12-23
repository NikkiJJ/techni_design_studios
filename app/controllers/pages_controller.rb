class PagesController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:home, :services, :meet]

  def home
  end

  def services
  end

  def meet

  end
end
