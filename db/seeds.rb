# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Test user seeds
    user1 = User.create!(
        email: "cust1@coolmail.com",
        password: "password"
    )

    user2 = User.create!(
        email: "manager1@coolmail.com",
        password: "password"
    )


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
        appointment: appointment1

    )

#Technician seed
    technician1 = Technician.create!(
        tech_name: "Naila Stiles",
    )

#Appointment seed
    appointment1 = Appointment.create!(
         client_firstname: customer1.customer.first_name,
         client_lastname: customer1.customer.last_name,
         client_mobile: customer1.customer.phone_number,
         date_created: DateTime.new(2021,3,5,9),
         price_service: service1.price,
         service_name: service1.service_name,
         technician_name: technician1.tech_name,
         client: customer1       
    )

#Promotion seed
    promotion1 = Promotion.create!(
        discount_flat: "10",
        discount_percent: "10.00",
        promo_code: "112233AA",
        service_type: service1.service_name,
        appointment: appointment1
    )

#Schedule seed
<<<<<<< HEAD
    schedule1 = Schedule.create!(
        days_working: 2.wday,
        from: DateTime.new(2021,4,20,10),
        to: DateTime.new(2021,4,17),
        technician: technician1
    )
=======
  #  schedule1 = Schedule.create!(
   #     days_working:
   #     from: 
   #     to:
   #     technician: technician1
   # )=======
>>>>>>> 833f35755b3b3813f2e429006cb53427f95cc581
