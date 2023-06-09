require "test_helper"

class ProdutoTest < ActiveSupport::TestCase
  test "Salvou com nome vazio" do
    produto = produtos(:nome_presence)
    assert_equal(produto.save, false)
  end

  test "Salvou com preço vazio" do
    produto = produtos(:preco_presence)
    assert_equal(produto.save, false)
  end

  test "Salvou com estoque contendo dígitos não-numéricos" do
    produto = produtos(:estoque_numericality)
    assert_equal(produto.save, false)
  end

  test "Salvou com nome não único" do
    produto = produtos(:nome_uniqueness)
    assert_equal(produto.save, false)
  end
end
