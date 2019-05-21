module Nfse
  module Entities
    class TcIdentificacaoPrestador < BaseEntity
      attribute :cpf_cnpj, Nfse::Entities::TcCpfCnpj # Todo: Revisar isso para não permitir todos os campos vazios
      attribute :inscricao_municipal, Types::String.constrained(max_size: 15)
    end
  end
end