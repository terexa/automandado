ActionMailer::Base.smtp_settings = {
    :address				=> ENV['SMTP_SERVER'],
    :port 					=> ENV['SMTP_PORT'],
    :domain 				=> ENV['MAIL_DOMAIN'],
    :user_name 				=> ENV['MAIL_USERNAME']+'@'+ENV['MAIL_DOMAIN'],
    :password 				=> ENV['MAIL_PASSWORD'],
    :authentication			=> ENV['MAIL_AUTENTICATION'],
    :enable_starttls_auto	=> true,
    :openssl_verify_mode	=> 'none'
}

ActionMailer::Base.default_url_options[:host] = ENV['HOST']

ActionMailer::Base.raise_delivery_errors = true