class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :venue
      t.string :venue_url
      t.string :tickets_url
      t.string :city
      t.timestamp :date

      t.timestamps
    end
  end
end
