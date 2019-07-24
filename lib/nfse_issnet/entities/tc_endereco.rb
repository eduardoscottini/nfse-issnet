module NfseIssnet
  module Entities
    class TcEndereco < BaseEntity
      attribute? :endereco, Types::String.constrained(max_size: 125).optional
      attribute? :cep, Types::Coercible::Integer.constrained(lteq: ('9' * 8).to_i).optional
      attribute? :numero, Types::String.constrained(max_size: 10).optional
      attribute? :complemento, Types::String.constrained(max_size: 60).optional
      attribute? :bairro, Types::String.constrained(max_size: 60).optional
      attribute? :cidade, Types::String.constrained(max_size: 7)
      attribute? :estado, Types::String.constrained(max_size: 2).optional
    end
  end
end