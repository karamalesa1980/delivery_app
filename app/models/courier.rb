class Courier < ApplicationRecord 
    has_many :packages, dependent: :destroy
  
    validates :name, presence: true, length: { maximum: 140 }
    validates :email, presence: true,
                length: { maximum: 140 },
                format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  end
  