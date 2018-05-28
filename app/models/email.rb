class Email < ApplicationRecord
  belongs_to :classmate
  validates_presence_of :email
  validates :email, uniqueness: true
end
