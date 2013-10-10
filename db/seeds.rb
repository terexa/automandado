# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Add the default admin user
puts "================== Seeding default user =============="
user = User.create! :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'
user.roles_mask = 1
user.save

# Add the default setting options
puts "================== Seeding settings =================="
default_options = {
	:MAIL_USERNAME => "your user name",
	:MAIL_PASSWORD => "your password",
	:SMTP_SERVER => "your smtp server address",
	:SMTP_PORT => 587,
	:MAIL_DOMAIN => "your doman name",
	:MAIL_AUTENTICATION => "plain"
}
default_options.each_with_index do |(key,value), i| 	 
	Admin::Setting.create(:option_name => key, :option_value => value)
	puts "seeding option: " + key.to_s
end
Admin::Setting.all.map{ |option| 
	ENV[option.option_name] = option.option_value
}