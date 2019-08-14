class TicketPizzasController < ApplicationController
	respond_to :html, :js

	def new
		@ticket_pizza = TicketPizza.new
		@pizza = Pizza.all
		@ticket = Ticket.all
	end

	def create
		@pizza = Pizza.all
		@ticket_pizza = TicketPizza.new(ticket_pizza_params)
		if @ticket_pizza.save
			redirect_to ticket_path(id: @ticket_pizza.ticket.id)
		else
			redirect_to root_path
		end
	end

	def destroy
		@ticket_pizza = TicketPizza.find(params[:id])
		@ticket_pizza.destroy
		redirect_to ticket_path(id: @ticket_pizza.ticket.id)
	end

	private

	def ticket_pizza_params
		params.require(:ticket_pizza).permit(:ticket_id, :pizza_id)
	end

end