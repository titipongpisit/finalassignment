class ProgramsController < ApplicationController

  def index
  	@programs = Program.all
  end

  def apply
  	@user = User.find_by_id(params[:id])
    if session["user_id"].present?
      student = User.find_by_id(session["user_id"])
      if student.interest != "student"
        redirect_to home_url
      end
    else
      redirect_to home_url
    end  
  end

  def submit
  	@user = User.find_by_id(params[:id])
  	@userprogram = ProgramsUser.new
  	@userprogram.user_id = @user.id
	  @userprogram.program_id = params[:program_id]

    if @userprogram.save
      redirect_to myprofile_url(@user)
    else
      redirect_to apply_url(@user), notice: "Please try again!"
    end
  end

  def overview
  	@programs = Program.all
  	@users = User.all
  end

  def summerprogram
  end

  def afterschool
  end

end