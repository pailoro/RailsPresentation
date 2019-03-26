# == Schema Information
#
# Table name: campaigns
#
#  id         :integer          not null, primary key
#  name       :string
#  body       :text
#  link       :string
#  image      :string
#  expiration :datetime
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Campaign < ApplicationRecord
	has_attachment  :image, accept: [:jpg, :png, :gif]
end
