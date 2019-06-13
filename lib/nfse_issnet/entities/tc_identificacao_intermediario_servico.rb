module NfseIssnet
  module Entities
    class TcIdentificacaoIntermediarioServico < BaseEntity
      attribute :cpf_cnpj, NfseIssnet::Entities::TcCpfCnpj
      attribute :razao_social, Types::String.constrained(max_size: 115)
      attribute? :inscricao_municipal, Types::String.constrained(max_size: 15)
    end
  end
end