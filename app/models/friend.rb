class Friend < ApplicationRecord
  has_many :families, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
  validates :phone, presence: true, length: { minimum: 9 }, numericality: { only_integer: true }
  validates :email, presence: true, length: { minimum: 5 }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :location, presence: true, length: { minimum: 2 }
end
