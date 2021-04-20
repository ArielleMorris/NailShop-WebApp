# == Schema Information
#
# Table name: schedules
#
#  id            :bigint           not null, primary key
#  days_working  :date
#  from          :datetime
#  to            :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  technician_id :bigint
#
# Indexes
#
#  index_schedules_on_technician_id  (technician_id)
#
# Foreign Keys
#
#  fk_rails_...  (technician_id => technicians.id)
#
class Schedule < ApplicationRecord
    
      belongs_to(
        :technician,
        class_name: 'Technician',
        foreign_key: 'technician_id',
        inverse_of: :schedules
      )
    
      validates :days_working, presence: true
end
