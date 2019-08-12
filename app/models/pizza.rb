class Pizza < ApplicationRecord
	has_one_attached :pic
	has_many :ticket_pizzas
	has_many :tickets, through: :ticket_pizzas

	validates :name, presence: true, length: { minimum: 3, maximum: 35}
	validates :description, presence: true, length: { minimum: 25, maximum: 350}
	validates :price, presence: true, numericality: { only_integer: true }
end
