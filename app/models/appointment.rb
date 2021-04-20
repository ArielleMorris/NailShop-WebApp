# == Schema Information
#
# Table name: appointments
#
#  id                  :bigint           not null, primary key
#  cancellation        :boolean
#  cancellation_reason :text
#  client_mobile       :integer
#  client_name         :string
#  date_created        :datetime
#  price_service       :decimal(, )
#  promo_code          :decimal(, )
#  service_name        :string
#  technician_name     :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  technician_id       :bigint
#
# Indexes
#
#  index_appointments_on_technician_id  (technician_id)
#
# Foreign Keys
#
#  fk_rails_...  (technician_id => technicians.id)
#
class Appointment < ApplicationRecord

      has_one(
        :technician,
        class_name: 'Technician',
        foreign_key: 'technician_id',
        inverse_of: :appointment,
        dependent: :destroy
      )

      has_one(
        :customer,
        class_name: 'Customer',
        foreign_key: 'appointment_id',
        inverse_of: :appointments,
        dependent: :destroy
      )

      has_one(
          :review,
          class_name:'Review',
          foreign_key: 'appointment_id',
          inverse_of: :appointment
      )

      has_one(
          :check_in,
          class_name: 'CheckIn',
          foreign_key: 'appointment_id',
          invsere_of: :appointment
      )

      has_many(
          :services,
          class_name: 'Service',
          foreign_key: 'appointment_id',
          inverse_of: :appointment
      )

      has_many(
          :services_booked,
          class_name: 'ServicesBooked',
          foreign_key: 'appointment_id',
          inverse_of: :appointment
      )
    
      validates :date_created, presence: true
end