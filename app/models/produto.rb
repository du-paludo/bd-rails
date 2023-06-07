class Produto < ApplicationRecord
    validates :nome, :preco, presence: { message: "deve ser preenchido" }
    validates :estoque, numericality: { only_integer: true, message: "deve conter apenas números" }
    validates :nome, uniqueness: { message: "já existe" }
    validates :preco, numericality: { only_integer: true, message: "do pedido deve conter apenas números" }

    has_and_belongs_to_many :pedidos
end
