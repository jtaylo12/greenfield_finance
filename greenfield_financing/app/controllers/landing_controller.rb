class LandingController < ApplicationController
#Read Only Pages~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  def home
  end
  def financing
  end
  def contact
  end
  def terms
  end

#New User Registration~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  def register
        @user = User.new
  end
  def create_user
    @user = User.new
    @user.username = params[:username]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.first_name = params[:first]
    @user.middle_init = params[:middle]
    @user.last_name = params[:last]
    @user.street_address = params[:street_address]
    @user.city = params[:city]
    @user.state = params[:state]

    if @user.save
      redirect_to "/entry", :notice => "Registration completed successfully."
    else
      flash[:notice] = 'Form is invalid'
      flash[:color] = 'invalid'
      render 'register'
    end
  end

#Login~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  def login
  end
end
