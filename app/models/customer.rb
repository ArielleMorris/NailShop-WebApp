# == Schema Information
#
# Table name: customers
#
#  id           :bigint           not null, primary key
#  first_name   :string
#  last_name    :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Customer < ApplicationRecord

    # has_one(
    #   :user,
    # )

    # belongs_to(
    #     :manager,
    #     class_name: 'Manager',
    #     foreign_key: 'manager_id',
    #     inverse_of: :customers
    #   )

    #   has_many(
    #     :appointments,
    #     class_name: 'Appointment',
    #     foreign_key: 'customer_id',
    #     inverse_of: :customer,
    #     dependent: :destroy
    #   )

      validates :first_name, presence: true
      validates :last_name, presence: true

    #   accepts_nested_attributes_for :user

end
