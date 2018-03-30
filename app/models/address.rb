class Address < ApplicationRecord
  belongs_to :classmate
  validates_presence_of :city
end
