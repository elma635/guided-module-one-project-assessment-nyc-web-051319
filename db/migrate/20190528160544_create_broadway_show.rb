class CreateBroadwayShow < ActiveRecord::Migration[5.2]
  def change
    create_table :broadway_shows do |t|
      t.string :title
      t.string :genre
      t.boolean :in_theaters
    end
  end
end
