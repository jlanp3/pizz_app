class AddColumnNticketToTickets < ActiveRecord::Migration[5.2]
  def change
  	add_column :tickets, :nticket, :integer
  end
end
