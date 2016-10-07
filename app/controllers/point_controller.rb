class PointController < ApplicationController

  def new
    
  end
  def pay
    require 'webpay'
    webpay = WebPay.new('test_secret_fn3fZegzJ8gZerRfEebyP9Ak')
    webpay.charge.create(
      amount: 400,
      currency: "jpy",
      card: params['webpay-token']
  )
    redirect_to :back, notice: '支払いが完了しました'
  end

end
