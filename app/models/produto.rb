class Produto < ApplicationRecord

    belongs_to :departamento

    validates :preco, presence: true
    validates :nome, presence: true
    validates :descricao, length: { in: 5..200 }
    validates :quantidade, numericality: { only_integer: true }
end
