class CreateTicketUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_users do |t|
    	t.integer :ticket_id
    	t.integer :user_id
      t.timestamps
    end
  end
end
