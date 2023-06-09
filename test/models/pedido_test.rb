require "test_helper"

class PedidoTest < ActiveSupport::TestCase
  test "Salvou com código vazio" do
    pedido = pedidos(:codigo_presence)
    assert_equal(pedido.save, false)
  end

  test "Salvou com código não-único" do
    pedido = pedidos(:codigo_uniqueness)
    assert_equal(pedido.save, false)
  end

  test "Salvou com código não contendo exatamente 4 dígitos" do
    pedido = pedidos(:codigo_length)
    assert_equal(pedido.save, false)
  end

  test "Salvou com código contendo dígitos não númericos" do
    pedido = pedidos(:codigo_numericality)
    assert_equal(pedido.save, false)
  end
end
