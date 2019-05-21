module Nfse
  module Entities
    class TcCpfCnpj < BaseEntity
      attribute? :cpf, Types::String.constrained(size: 11)
      attribute? :cnpj, Types::String.constrained(size: 14)
    end
  end
end