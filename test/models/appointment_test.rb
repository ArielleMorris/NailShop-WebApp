# == Schema Information
#
# Table name: appointments
#
#  id               :bigint           not null, primary key
#  client_firstname :string
#  client_lastname  :string
#  client_mobile    :integer
#  date_created     :datetime
#  price_service    :decimal(, )
#  service_name     :string
#  technician_name  :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  customer_id      :bigint
#  technician_id    :bigint
#
# Indexes
#
#  index_appointments_on_customer_id    (customer_id)
#  index_appointments_on_technician_id  (technician_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#  fk_rails_...  (technician_id => technicians.id)
#
require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
