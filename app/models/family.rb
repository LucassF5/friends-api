class Family < ApplicationRecord
  belongs_to :friend
  validates :families, presence: true
end
