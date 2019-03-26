# == Schema Information
#
# Table name: users_reports
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  local      :string
#  lat        :decimal(10, 6)
#  long       :decimal(10, 6)
#  canal      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UsersReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
