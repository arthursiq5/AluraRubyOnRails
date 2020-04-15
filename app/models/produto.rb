class Produto < ApplicationRecord

    belongs_to :departamento, optional: true

    validates :preco, :nome, presence: true
    validates :descricao, length: { in: 5..200 }
    validates :quantidade, numericality: { only_integer: true }
end
