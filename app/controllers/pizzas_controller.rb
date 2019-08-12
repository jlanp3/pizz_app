class PizzasController < ApplicationController

	def new
		@pizza = Pizza.new
	end

	def create
		@pizza = Pizza.new(pizza_params)
		if @pizza.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@pizza = Pizza.find(params[:id])
	end

	def update
		@pizza = Pizza.find(params[:id])
		if @pizza.update(pizza_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def destroy
		@pizza = Pizza.find(params[:id])
		@pizza.destroy
		redirect_to root_path
	end

	private

	def pizza_params
		params.require(:pizza).permit(:name, :description, :price, :pic)
	end
end