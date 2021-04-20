# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Manager seed
    manager1 = Manager.create!(
        manager_firstname: 'Monique',
        manager_lastname: 'DeLite',
        email: "dessie@coolmail.com",
        password: "password"
    )

#Customer seeds
    customer1 = Customer.create!(
        first_name: 'Roxxy',
        last_name: 'Sapphire',
        email: "roxxy@coolmail.com",
        password: "password",
        phone_number: "3448729050"
        manager: manager1
    )

    customer2 = Customer.create!(
        first_name: 'Justin',
        last_name: 'Thyme',
        email: "justin@coolmail.com",
        password: "password",
        phone_number: "3449892212"
        manager: manager1
    )

#Service seeds
    service1 = Service.create!(
        service_name: 'Manicure',
        price: '20.00',
        duration: '25'
    )

    service2 = Service.create!(
        service_name: 'Pedicure',
        price: '30.00',
        duration: '40'
    )

#Review seed
    review1 = Review.create!(
        rating_num: '4',
        ratings_desc: "I was satisfied with my appointment!",
        service_code: '99988877',
        service_name: 'Manicure'

    )

#Technician seed
    technician1 = Technician.create!(
        tech_name: "Naila Stiles"
    )

#Schedule seed
  #  schedule1 = Schedule.create!(
   #     days_working:
   #     from: 
   #     to:
   #     technician: technician1
   # )=======
