# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Add the default admin user
# @user = User.new(:email => 'admin@example.com', :password => 'admin', :password_confirmation => 'admin')
@user = User.new(:email => 'terexa.ohiggins@gmail.com', :password => 'qwerty00', :password_confirmation => 'qwerty00')
@user.roles_mask = 1
@user.save