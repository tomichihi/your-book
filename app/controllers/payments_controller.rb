class PaymentsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create]
  
  def new
    @payment = Payment.new
  end
  
  def create
    @payment = Payment.new(payment_params)
    if @payment.valid?
      pay_method
      @payment.save
      return redirect_to new_room_path
    else
      render 'new'
    end
  end
  
  private
  def payment_params
    params.require(:payment).permit(:price).merge(token: params[:token],user_id: current_user.id)
  end

  def pay_method
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: payment_params[:price],  # 商品の値段
      card: payment_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類(日本円)
    )
  end
  
end
