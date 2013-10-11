class HomeController < ApplicationController
	def index	
		@menus = Admin::Menu.all		
	end
	def send_order
		@order = []
		params[:menues].map{|m| @order.push( Admin::Menu.find_by_id(m) )}
		order_details = {:order => @order, :user=>current_user}
		UserMailer.send_order(order_details).deliver
		redirect_to root_path
	end
end
