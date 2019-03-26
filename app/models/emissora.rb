# == Schema Information
#
# Table name: emissoras
#
#  id         :integer          not null, primary key
#  name       :string
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Emissora < ApplicationRecord
	has_many :afiliadas

	has_attachment  :photo, accept: [:jpg, :png, :gif]
	
end
