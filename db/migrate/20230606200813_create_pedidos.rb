class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.string :codigo
      t.belongs_to :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
