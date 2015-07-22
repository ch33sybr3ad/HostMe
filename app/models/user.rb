class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Gravtastic
  gravtastic

  # user can host many events
  has_many :events

  # join table between user(as guests) and events(as attending_events)
  has_many :guestlists, foreign_key: "guest_id"
  has_many :attending_events, through: :guestlists, source: :event

end
