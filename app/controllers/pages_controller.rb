class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :apropos, :contact, :recrutement, :syndic]

  def home
    @disable_footer = true
  end

  def apropos
  end

  def contact
  end

  def recrutement
  end

  def syndic
  end
end
