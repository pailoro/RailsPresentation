# == Schema Information
#
# Table name: advertisers
#
#  id                      :integer          not null, primary key
#  razao                   :string
#  fantasia                :string
#  cnpj                    :string
#  endereco                :string
#  cep                     :string
#  numero                  :string
#  complemento             :string
#  cidade                  :string
#  estado                  :string
#  logo                    :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  advertisers_category_id :integer
#

require 'test_helper'

class AdvertiserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
