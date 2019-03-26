class CreateAdvertisers < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisers do |t|
      t.string :razao
      t.string :fantasia
      t.string :cnpj
      t.string :endereco
      t.string :cep
      t.string :numero
      t.string :complemento
      t.string :cidade
      t.string :estado
      t.string :logo
      t.integer :advertisers_category_id

      t.timestamps
    end
  end
end
