class LoansController < ApplicationController
  def index
    @loans = Loan.all
  end

  def show
    @loan = Loan.find(params[:id])
  end

  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new
    @loan.user_id = params[:user_id]
    @loan.duration = params[:duration]
    @loan.interest_rate = params[:interest_rate]
    @loan.loan_balance = params[:loan_balance]
    @loan.loan_type = params[:loan_type]

    if @loan.save
      redirect_to "/loans", :notice => "Loan created successfully."
    else
      render 'new'
    end
  end

  def edit
    @loan = Loan.find(params[:id])
  end

  def update
    @loan = Loan.find(params[:id])

    @loan.user_id = params[:user_id]
    @loan.duration = params[:duration]
    @loan.interest_rate = params[:interest_rate]
    @loan.loan_balance = params[:loan_balance]
    @loan.loan_type = params[:loan_type]

    if @loan.save
      redirect_to "/loans", :notice => "Loan updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @loan = Loan.find(params[:id])

    @loan.destroy

    redirect_to "/loans", :notice => "Loan deleted."
  end
end
