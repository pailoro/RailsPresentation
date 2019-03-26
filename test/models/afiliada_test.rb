# == Schema Information
#
# Table name: afiliadas
#
#  id           :integer          not null, primary key
#  name         :string
#  razao_social :string
#  phone        :string
#  cnpj         :string
#  estado       :string
#  regiao       :string
#  emissora_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class AfiliadaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
