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

class Notification < ApplicationRecord
end
