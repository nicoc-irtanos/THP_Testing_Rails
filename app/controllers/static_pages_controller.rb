class StaticPagesController < ApplicationController
  def home
  end

  def club
    @users = User.all
    if logged_in?
      # then stay on secret_page
    else
      # else redictiion to the login page with a beautiful flash
      redirect_to "/login", flash: { flash: "hey login-toi pour y accéder" }
    end
  end

end
