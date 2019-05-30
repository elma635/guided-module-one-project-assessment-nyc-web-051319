class CreateTicket < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :broadway_show_id
      t.integer :customer_id
      t.integer :seat_number
    end
  end
end
