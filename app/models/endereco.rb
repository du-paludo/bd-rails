class Endereco < ApplicationRecord
    validates :logradouro, :cep, presence: { message: "deve ser preenchido" }
    validates :cep, numericality: { only_integer: true, message: "deve conter apenas números"}
    validates :cep, length: { is: 8, message: "deve conter 8 dígitos" }

    belongs_to :cliente
end
