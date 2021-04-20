# == Schema Information
#
# Table name: technicians
#
#  id         :bigint           not null, primary key
#  tech_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Technician < ApplicationRecord

    has_one(
        :schedule,
        class_name: 'Schedule',
        foreign_key: 'technician_id',
        inverse_of: :technician,
        dependent: :destroy
      )
    
      belongs_to(
        :appointment,
        class_name: 'Appointment',
        foreign_key: 'appointment_id',
        inverse_of: :technician
      )
    
      validates :title, presence: true
    
      validates :tech_name, presence: true
end
