class Ticket < ApplicationRecord
	has_many :ticket_pizzas, dependent: :destroy
	has_many :ticket_user
	has_many :users, through: :ticket_user
	has_many :pizzas, through: :ticket_pizzas
end
