# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  name       :string
#  body       :text
#  delivery   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class NotificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
