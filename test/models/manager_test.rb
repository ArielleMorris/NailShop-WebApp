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
require "test_helper"

class ManagerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
