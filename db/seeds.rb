# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read('classmates.csv')
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  line = row.to_hash
  classmate = Classmate.create(last_name: line['last_name'], first_name: line['first_name'], married_name: line['married_name'], spouse: line['spouse'], status_id: line['status_id'])
  if line['street1']
    Address.create(classmate_id: classmate.id, street1: line['street1'], city: line['city'], state: line['state'], zip: line['zip'])
  end
  if line['email']
    Email.create(classmate_id: classmate.id, email: line['email'])
  end
  if line['phone']
    Phone.create(classmate_id: classmate.id, number: line['phone'])
  end
end
