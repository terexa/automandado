class HomeController < ApplicationController
	def index	
		@menus = Admin::Menu.all		
	end
	def send_order
		raise 'here'
	end
end
