class UsersController < ApplicationController
before_action :authenticate_user!

def home
    @user = current_user
end
def show
    @user = User.find(params[:id])
end

def billing
    @user = User.find(params[:id])
end

def edit
  @user = User.find(params[:id])
end

def infoupdate
  @user = User.find(params[:id])

  @user.username = params[:username]
  @user.email = params[:email]
  @user.password = params[:password]
  @user.first_name = params[:first_name]
  @user.middle_init = params[:middle_init]
  @user.last_name = params[:last_name]
  @user.street_address = params[:street_address]
  @user.city = params[:city]
  @user.state = params[:state]

  if @user.save
    redirect_to "/users/@user.id", :notice => "Profile updated successfully."
  else
    render 'edit'
  end

  def billingupdate
    @user = User.find(params[:id])

    @user.billing_preference = params[:billing_preference]
    @user.account_num = params[:account_num]
    @user.routing_num = params[:routing_num]

    if @user.save
      redirect_to "/users/billing/@user.id", :notice => "Billing updated successfully."
    else
      render 'billing'
    end

end
def loans
    @user = User.find(params[:id])
    @loans = Loan.new

end
end end
