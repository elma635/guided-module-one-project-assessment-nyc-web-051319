class CreateTicket < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :number_of_people
      t.integer :seat_number
      t.string :time
      t.string :date


      t.integer :broadway_show_id
      t.integer :customer_id
    end
  end
end
