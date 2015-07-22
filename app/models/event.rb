class Event < ActiveRecord::Base
  # belongs to a host user
  belongs_to :user

  # join table between user(as guests) and events(as attending_events)
  has_many :guestlists
  has_many :guests, through: :guestlists, source: :guest
end
