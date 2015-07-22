class Guestlist < ActiveRecord::Base

  belongs_to :event
  belongs_to :guest, foreign_key: :guest_id, class_name: "User"
end
