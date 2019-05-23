module NfseIssnet
  module Entities
    class TcEndereco < BaseEntity
      attribute? :endereco, Types::String.constrained(max_size: 125)
      attribute? :cep, Types::Coercible::Integer.constrained(lteq: ('9' * 8).to_i)
      attribute? :numero, Types::String.constrained(max_size: 10)
      attribute? :complemento, Types::String.constrained(max_size: 60)
      attribute? :bairro, Types::String.constrained(max_size: 60)
      attribute? :cidade, Types::String.constrained(max_size: 7)
      attribute? :estado, Types::String.constrained(max_size: 2)
    end
  end
end