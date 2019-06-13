module NfseIssnet
  module Entities
    class TcIdentificacaoTomador < BaseEntity
      attribute :cpf_cnpj, NfseIssnet::Entities::TcCpfCnpj
      attribute? :inscricao_municipal, Types::String.constrained(max_size: 15)
    end
  end
end