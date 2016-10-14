class PointController < ApplicationController

  def new
    @point = current_user.point
  end
  def bank
    
  end
  def card
    
  end
  def pay
    require 'webpay'
    webpay = WebPay.new('test_secret_fn3fZegzJ8gZerRfEebyP9Ak')
    customer = webpay.customer.create(card: params['webpay-token'])
    webpay.charge.create(
      amount: 400,
      currency: "jpy",
      customer: customer.id
    )
    redirect_to :back, notice: '支払いが完了しました'
  end

end
