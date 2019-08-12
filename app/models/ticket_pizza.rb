class TicketPizza < ApplicationRecord
	belongs_to :pizza
	belongs_to :ticket
end
