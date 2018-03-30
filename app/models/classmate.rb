class Classmate < ApplicationRecord
  validates_presence_of :first_name

  has_many :addresses
  accepts_nested_attributes_for :addresses,
    :allow_destroy => true,
    :reject_if     => :all_blank
  has_many :phones
  accepts_nested_attributes_for :phones,
    :allow_destroy => true,
    :reject_if     => :all_blank
  has_many :emails
  accepts_nested_attributes_for :emails,
    :allow_destroy => true,
    :reject_if     => :all_blank
end
