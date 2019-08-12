class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
    	t.string :name
    	t.text :description
    	t.integer :price
      t.timestamps
    end
  end
end
