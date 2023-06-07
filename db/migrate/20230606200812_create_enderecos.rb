class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :cep
      t.belongs_to :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
