class Card < ApplicationRecord

  validates :expiration_date,   presence: true
  validates :card_number,       presence: true
  validates :securitycord,      presence: true
  
  validates :id,              allow_blank: true, absence: true,   on: :validates_step4
  validates :created_at,      allow_blank: true, absence: true,   on: :validates_step4
  validates :updated_at,      allow_blank: true, absence: true,   on: :validates_step4
  validates :user_id,         allow_blank: true, absence: true,   on: :validates_step4


  belongs_to :user, optional: true
  # belongs_to :user
end
