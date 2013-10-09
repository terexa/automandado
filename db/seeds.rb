# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Add the default admin user
puts "================== Seeding default user =================="
@user = User.new(:email => 'admin@example.com', :password => 'admin', :password_confirmation => 'admin')
@user.roles_mask = 1
@user.save

# Add the default setting options
puts "================== Seeding settings =================="
default_options = {
	:HOST => "localhost:3000",
	:MAIL_USERNAME => "",
	:MAIL_PASSWORD => "",
	:SMTP_SERVER => "",
	:MAIL_DOMAIN => ""
}
default_options.each_with_index do |(key,value), i| 	 
	Admin::Setting.new(:option_name => key, :option_value => value)
	puts "seeding option: " + key.to_s
end