class PagesController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:home, :services, :meet, :contact]

  def home
  end

  def services
  end

  def meet

  end

  def contact

  end
end
