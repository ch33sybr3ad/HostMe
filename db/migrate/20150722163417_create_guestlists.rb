class CreateGuestlists < ActiveRecord::Migration
  def change
    create_table :guestlists do |t|
      t.integer :guest_id
      t.integer :attending_event_id

      t.timestamps null: false
    end
  end
end
