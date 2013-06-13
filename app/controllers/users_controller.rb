class UsersController < ApplicationController

  def index
    @users = User.all
    if session["user_id"].present?
      user = User.find_by_id(session["user_id"])
      if user.interest != "administrator"
        redirect_to home_url
      end
    else
      redirect_to home_url
    end  
  end

  def show
    @user = User.find_by_id(params[:id])
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    @user.givenname = params[:givenname]
    @user.surname = params[:surname]
    @user.age = params[:age]
    @user.gender = params[:gender]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.organization = params[:organization]
    @user.grade = params[:grade]
    @user.interest = params[:interest]

    if @user.save
      session["user_id"] = @user.id
      redirect_to myprofile_url(@user)
    else
      redirect_to signup_url, notice: "Please try again!"
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.givenname = params[:givenname]
    @user.surname = params[:surname]
    @user.age = params[:age]
    @user.gender = params[:gender]
    @user.email = params[:email]
    @user.phone = params[:phone]

    if @user.interest == "administrator"
      @user.organization = @user.organization
      @user.interest = @user.interest
    else
      @user.organization = params[:organization]
      @user.interest = params[:interest]
    end

    if @user.save
      session["user_id"] = @user.id
      redirect_to myprofile_url(@user)
    else
      redirect_to updateprofile_url, notice: "Please try again!"
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to users_url
  end
end
