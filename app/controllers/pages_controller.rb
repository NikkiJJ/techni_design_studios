class PagesController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:home]

  def home
  end
end
