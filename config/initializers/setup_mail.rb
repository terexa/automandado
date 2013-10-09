ActionMailer::Base.smtp_settings = {
    :address=>              ENV['SMTP_SERVER'],
    :port=>                 587,
    :domain=>               ENV['MAIL_DOMAIN'],
    :user_name=>            ENV['MAIL_USERNAME'],
    :password=>             ENV['MAIL_PASSWORD'],
    :authentication=>       "plain",
    :enable_starttls_auto=> true
}

ActionMailer::Base.default_url_options[:host] = ENV['HOST']

ActionMailer::Base.raise_delivery_errors = true