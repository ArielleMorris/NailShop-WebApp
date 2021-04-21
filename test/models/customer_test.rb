# == Schema Information
#
# Table name: customers
#
#  id             :bigint           not null, primary key
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
require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
