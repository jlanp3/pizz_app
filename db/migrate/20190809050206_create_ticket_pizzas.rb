class CreateTicketPizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_pizzas do |t|
    	t.integer :ticket_id
    	t.integer :pizza_id
      t.timestamps
    end
  end
end
