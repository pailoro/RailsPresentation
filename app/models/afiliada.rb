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

class Afiliada < ApplicationRecord
	belongs_to :emissora, dependent: :destroy

	has_attachment  :logo, accept: [:jpg, :png, :gif]

	ESTADOS = ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"]
	REGIAO = ["Norte", "Nordeste", "Centro-Oeste", "Sudeste", "Sul"]





end
