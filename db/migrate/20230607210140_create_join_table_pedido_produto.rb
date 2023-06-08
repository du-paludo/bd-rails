class CreateJoinTablePedidoProduto < ActiveRecord::Migration[7.0]
  def change
    create_join_table :pedidos, :produtos do |t|
      t.index [:pedido_id, :produto_id]
      # t.index [:produto_id, :pedido_id]
    end
  end
end
