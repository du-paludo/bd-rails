require "test_helper"

class ClienteTest < ActiveSupport::TestCase
    include Devise::Test::IntegrationHelpers
  test "Salvou com CPF vazio" do
    cliente = clientes(:cpf_presence)
    assert_equal(cliente.save, false)
  end

  test "Salvou com nome vazio" do
    cliente = clientes(:nome_presence)
    assert_equal(cliente.save, false)
  end

  test "Salvou com sobrenome vazio" do
    cliente = clientes(:sobrenome_presence)
    assert_equal(cliente.save, false)
  end

  test "Salvou com CPF não contendo apenas números" do
    cliente = clientes(:cpf_numericality)
    assert_equal(cliente.save, false)
  end

  test "Salvou com CPF não contendo exatamente 11 dígitos" do
    cliente = clientes(:cpf_length)
    assert_equal(cliente.save, false)
  end

  test "Salvou com CPF não-único" do
    cliente = clientes(:cpf_uniqueness)
    assert_equal(cliente.save, false)
  end

  test "Salvou com nome com quantidade de dígitos inválida" do
    cliente = clientes(:nome_length)
    assert_equal(cliente.save, false)
  end

  test "Salvou com sobrenome com quantidade de dígitos inválida" do
    cliente = clientes(:sobrenome_length)
    assert_equal(cliente.save, false)
  end

  test "Salvou com nome com dígitos inválidos" do
    cliente = clientes(:nome_format)
    assert_equal(cliente.save, false)
  end

  test "Salvou com sobrenome com dígitos inválidos" do
    cliente = clientes(:sobrenome_format)
    assert_equal(cliente.save, false)
  end

end