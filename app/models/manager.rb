# == Schema Information
#
# Table name: managers
#
#  id                :bigint           not null, primary key
#  manager_firstname :string
#  manager_lastname  :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Manager < ApplicationRecord

    has_one(
      :user,
    )

    has_many(
        :customers,
        class_name: 'Customer',
        foreign_key: 'manager_id',
        inverse_of: :manager,
        dependent: :destroy
      )
    
      validates :manager_firstname, presence: true
      validates :manager_lastname, presence: true

      accepts_nested_attributes_for :user
    
end
