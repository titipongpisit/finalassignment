class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params["username"])

    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to myprofile_url(user), notice: "Welcome back, #{user.username}"
    else
      redirect_to login_url, notice: "Unknown username or password."
    end
  end

  def destroy
    session["user_id"] = nil
    redirect_to home_url, notice: "Come back soon!"
  end

end