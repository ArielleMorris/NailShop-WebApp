# == Schema Information
#
# Table name: appointments
#
#  id               :bigint           not null, primary key
#  check_in         :boolean          default(FALSE)
#  client_firstname :string
#  client_lastname  :string
#  client_mobile    :string
#  date_created     :datetime
#  price_service    :decimal(, )
#  service_name     :string
#  technician_name  :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  technician_id    :bigint
#  user_id          :bigint
#
# Indexes
#
#  index_appointments_on_technician_id  (technician_id)
#  index_appointments_on_user_id        (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (technician_id => technicians.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
