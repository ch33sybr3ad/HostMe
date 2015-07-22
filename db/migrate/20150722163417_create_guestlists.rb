class CreateGuestlists < ActiveRecord::Migration
  def change
    create_table :guestlists do |t|
      t.integer :guest_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
