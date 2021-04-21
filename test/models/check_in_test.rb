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
require "test_helper"

class CheckInTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
