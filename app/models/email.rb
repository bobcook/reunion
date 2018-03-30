class Email < ApplicationRecord
  belongs_to :classmate
  validates_presence_of :email
end
