class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact, :jobs]

  def home
  end

  def about
  end

  def contact
  end

  def jobs
  end

  def syndic
  end
end
