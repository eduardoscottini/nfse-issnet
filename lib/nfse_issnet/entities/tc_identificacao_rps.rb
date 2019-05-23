module NfseIssnet
  module Entities
    class TcIdentificacaoRps < BaseEntity
      attribute :numero, Types::Coercible::Integer.constrained(lteq: ('9' * 15).to_i)
      attribute :serie, Types::Coercible::String.constrained(max_size: 5)
      attribute :tipo, Types::Coercible::Integer.enum(1, 2, 3)
    end
  end
end