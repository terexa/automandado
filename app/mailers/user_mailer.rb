class UserMailer < ActionMailer::Base
  # default from: "something@example.com"
  default :from => ENV['MAIL_USERNAME'].to_s+'@'+ENV['MAIL_DOMAIN'].to_s

  def send_order(params)
    @user = params[:user]
    @order  = params[:order]
    mail(to: @user.email.to_s, subject: 'Foodwagon order')
  end

end
