class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new
    @payment.loan_id = params[:loan_id]
    @payment.user_id = params[:user_id]
    @payment.previous_payment = params[:previous_payment]
    @payment.payment_due = params[:payment_due]
    @payment.monthly_payment = params[:monthly_payment]
    @payment.total_payments = params[:total_payments]
    @payment.payment_history = params[:payment_history]

    if @payment.save
      redirect_to "/payments", :notice => "Payment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @payment = Payment.find(params[:id])
  end

  def update
    @payment = Payment.find(params[:id])

    @payment.loan_id = params[:loan_id]
    @payment.user_id = params[:user_id]
    @payment.previous_payment = params[:previous_payment]
    @payment.payment_due = params[:payment_due]
    @payment.monthly_payment = params[:monthly_payment]
    @payment.total_payments = params[:total_payments]
    @payment.payment_history = params[:payment_history]

    if @payment.save
      redirect_to "/payments", :notice => "Payment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @payment = Payment.find(params[:id])

    @payment.destroy

    redirect_to "/payments", :notice => "Payment deleted."
  end
end
