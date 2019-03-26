# == Schema Information
#
# Table name: advertisers_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AdvertisersCategory < ApplicationRecord
	has_many :advertisers, dependent: :destroy
end
