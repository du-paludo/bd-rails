class Cliente < ApplicationRecord
    validates :cpf, :nome, :sobrenome, presence: { message: "deve ser preenchido" }
    validates :cpf, numericality: { only_integer: true, message: "deve conter apenas números"}
    validates :cpf, length: { is: 11, message: "deve conter 11 dígitos" }
    validates :cpf, uniqueness: { message: "já existe" }
    
    validates :nome, :sobrenome, length: { minimum: 2, message: "deve conter pelo menos 2 caracteres" }
    validates :nome, :sobrenome, length: { maximum: 50, message: "deve conter no máximo 50 caracteres" }
    validates :nome, :sobrenome, format: { with: /\A[a-zA-ZÀ-ÖØ-öø-ÿ ]+\z/, message: "deve conter apenas letras" }

    has_one :endereco, dependent: :destroy
    accepts_nested_attributes_for :endereco
    has_many :pedidos, dependent: :destroy
end
