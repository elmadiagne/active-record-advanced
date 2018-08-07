class Patient < ActiveRecord::Base
  has_many :consultations
  has_many :doctors, through: :consultations

  validates :last_name, length: { minimum: 3 }
end
