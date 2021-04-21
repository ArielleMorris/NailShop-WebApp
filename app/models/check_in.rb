# == Schema Information
#
# Table name: check_ins
#
#  id               :bigint           not null, primary key
#  client_firstname :string
#  client_lastname  :string
#  client_mobile    :string
#  service_code     :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  appointment_id   :bigint
#
# Indexes
#
#  index_check_ins_on_appointment_id  (appointment_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#
class CheckIn < ApplicationRecord
    belongs_to :user

    belongs_to(
        :appointment,
        class_name: 'Appointment',
        foreign_key: 'appointment_id',
        inverse_of: :appointments
      )
    
      validates :service_code, presence: true
end
