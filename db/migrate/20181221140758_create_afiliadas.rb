class CreateAfiliadas < ActiveRecord::Migration[5.1]
  def change
    create_table :afiliadas do |t|
      t.string :name
      t.string :razao_social
      t.string :phone
      t.string :cnpj
      t.string :estado
      t.string :regiao
      t.integer :emissora_id

      t.timestamps
    end
  end
end
