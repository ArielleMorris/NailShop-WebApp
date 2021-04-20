# == Schema Information
#
# Table name: customers
#
#  id             :bigint           not null, primary key
#  customer_email :string
#  first_name     :string
#  last_name      :string
#  phone_number   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :bigint
#  manager_id     :bigint
#
# Indexes
#
#  index_customers_on_appointment_id  (appointment_id)
#  index_customers_on_manager_id      (manager_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#  fk_rails_...  (manager_id => managers.id)
#
class Customer < ApplicationRecord

    has_one(
      :user,
      inverse_of: :customer
    )

    belongs_to(
        :manager,
        class_name: 'Manager',
        foreign_key: 'manager_id',
        inverse_of: :manager
      )

      has_many(
        :appointments,
        class_name: 'Appointment',
        foreign_key: 'appointment_id',
        inverse_of: :customer,
        dependent: :destroy
      )

      validates :phone_number, presence: true
      validates :first_name, presence: true
      validates :last_name, presence: true

      accepts_nested_attributes_for :user

end
