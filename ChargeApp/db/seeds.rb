# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customer_one   = Customer.create!(first_name: "Johny", last_name: "Flow")
customer_two   = Customer.create!(first_name: "Raj", last_name: "Jamnis")
customer_three = Customer.create!(first_name: "Andrew", last_name: "Chung")
customer_four  = Customer.create!(first_name: "Mike", last_name: "Smith")

# successful transactions
5.times { Charge.create!(customer_id: customer_one.id, paid: true, currency: "usd", amount: rand(1000)) }
3.times { Charge.create!(customer_id: customer_two.id, paid: true, currency: "usd", amount: rand(1000)) }
Charge.create!(customer_id: customer_three.id, paid: true, currency: "usd", amount: rand(1000)) 
Charge.create!(customer_id: customer_four.id, paid: true, currency: "usd", amount: rand(1000)) 

# failed transactions
3.times { Charge.create!(customer_id: customer_three.id, paid: false, currency: "usd", amount: rand(1000)) }
2.times { Charge.create!(customer_id: customer_four.id, paid: false, currency: "usd", amount: rand(1000)) }

# disputed
3.times { Charge.create!(customer_id: customer_one.id, disputed: true, currency: "usd", amount: rand(1000)) }
2.times { Charge.create!(customer_id: customer_two.id, disputed: true, currency: "usd", amount: rand(1000)) }
