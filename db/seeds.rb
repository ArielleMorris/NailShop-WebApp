# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Test user seeds - Manager account not implemented yet.
    user1 = User.create!(
        first_name: 'Roxxy',
        last_name: 'Stone',
        phone_number: '9015052020',
        email: "cust1@email.com",
        password: "password",
        customer_role: true,
        manager_role: false
    )

    user2 = User.create!(
        first_name: 'Justin',
        last_name: 'Thyme',
        phone_number: '9012928878',
        email: "cust2@email.com",
        password: "password",
        customer_role: true,
        manager_role: false
    )

    manager = User.create!(
        first_name: 'Mallori',
        last_name: 'DeLite',
        phone_number: '9013334444',
        email: "manager@email.com",
        password: "password",
        customer_role: false,
        manager_role: true
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


#Technician seeds
    technician1 = Technician.create!(
        tech_name: "Naila Stiles"
    )

    technician2 = Technician.create!(
        tech_name: "Jules Jones"
    )

    technician3 = Technician.create!(
        tech_name: "Kailen Rhodes"
    )

#Appointment seeds
    appointment1 = Appointment.create!(
         client_firstname: user1.first_name,
         client_lastname: user1.last_name,
         client_mobile: user1.phone_number,
         date_created: DateTime.new(2021,3,5,9),
         price_service: service1.price,
         service_name: service1.service_name,
         technician_name: technician1.tech_name,
         user: user1       
    )

    appointment2 = Appointment.create!(
        client_firstname: user2.first_name,
        client_lastname: user2.last_name,
        client_mobile: user2.phone_number,
        date_created: DateTime.new(2021,4,4,10),
        price_service: service2.price,
        service_name: service2.service_name,
        technician_name: technician2.tech_name,
        user: user2       
   )

    #Review seed
    review1 = Review.create!(
        rating_num: '4',
        ratings_desc: "I was satisfied with my appointment!",
        service_code: '99988877',
        service_name: 'Manicure',
        appointment: appointment1
    )

    #Review seed
    review2 = Review.create!(
        rating_num: '5',
        ratings_desc: "WOW!!! My nails have never looked this good.",
        service_code: '99988877',
        service_name: 'Pedicure',
        appointment: appointment2
    )

#Promotion seed
    promotion1 = Promotion.create!(
        title: "Manicure",
        discount_flat: "10",
        discount_percent: "10.00",
        promo_code: "112233AA",
        service_type: service1.service_name,
        service: service1
    )

# #Schedule seed
#     schedule1 = Schedule.create!(
#         days_working: 2.day,
#         from: DateTime.noon,
#         to: DateTime.midnight,
#         technician: technician1
#     )

