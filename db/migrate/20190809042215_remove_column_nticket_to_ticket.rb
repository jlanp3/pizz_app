class RemoveColumnNticketToTicket < ActiveRecord::Migration[5.2]
  def change
  	remove_column :tickets, :nticket
  end
end
