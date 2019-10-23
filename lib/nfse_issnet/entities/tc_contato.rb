module NfseIssnet
  module Entities
    class TcContato < BaseEntity
      attribute? :telefone, Types::String.constrained(max_size: 11).optional
      attribute :email, Types::String.constrained(max_size: 80)
    end
  end
end