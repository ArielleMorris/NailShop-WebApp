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
require "test_helper"

class ScheduleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
