# == Schema Information
#
# Table name: services
#
#  id             :bigint           not null, primary key
#  duration       :integer
#  price          :decimal(, )
#  service_name   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :bigint
#
# Indexes
#
#  index_services_on_appointment_id  (appointment_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#
class Service < ApplicationRecord

    belongs_to(
        :appointment,
        class_name: 'Appointment',
        foreign_key: 'appointment_id',
        inverse_of: :service,
        optional: true
      )

      has_one(
        :promotion,
        class_name: 'Promotion',
        foreign_key: 'service_id',
        inverse_of: :service

      )
    
      validates :price, presence: true
end
