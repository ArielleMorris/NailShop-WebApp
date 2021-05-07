# == Schema Information
#
# Table name: appointments
#
#  id               :bigint           not null, primary key
#  client_firstname :string
#  client_lastname  :string
#  client_mobile    :string
#  date_created     :datetime
#  price_service    :decimal(, )
#  service_name     :string
#  technician_name  :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  technician_id    :bigint
#  user_id          :bigint
#
# Indexes
#
#  index_appointments_on_technician_id  (technician_id)
#  index_appointments_on_user_id        (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (technician_id => technicians.id)
#  fk_rails_...  (user_id => users.id)
#
class Appointment < ApplicationRecord

      has_one(
        :technician,
        class_name: 'Technician',
        foreign_key: 'technician_id',
        inverse_of: :appointment,
       
      )

      belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :appointments
      )

      has_one(
          :review,
          class_name:'Review',
          foreign_key: 'appointment_id',
          inverse_of: :appointment,
          dependent: :destroy
      )

      has_one(
          :check_in,
          class_name: 'CheckIn',
          foreign_key: 'appointment_id',
          inverse_of: :appointment,
          dependent: :destroy
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
          inverse_of: :appointment,
          dependent: :destroy
      )
    
      validates :date_created, presence: true
      validates :client_mobile, :phone_number => {:ten_digits => true, :message => "Not a valid phone number. It must be ten digits."}
end
