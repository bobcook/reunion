class Email < ApplicationRecord
  belongs_to :classmate
  validates :email, uniqueness: true
end
