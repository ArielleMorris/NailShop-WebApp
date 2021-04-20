# == Schema Information
#
# Table name: services_bookeds
#
#  id             :bigint           not null, primary key
#  price          :decimal(, )
#  service_name   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :bigint
#
# Indexes
#
#  index_services_bookeds_on_appointment_id  (appointment_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#
class ServicesBooked < ApplicationRecord

    belongs_to(
        :appointment,
        class_name: 'Appointment',
        foreign_key: 'appointment_id',
        inverse_of: :services_booked
      )
    
      validates :days_working, presence: true
end
