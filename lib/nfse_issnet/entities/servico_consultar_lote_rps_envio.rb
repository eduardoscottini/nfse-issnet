module NfseIssnet
  module Entities
    class ServicoConsultarLoteRpsEnvio < BaseEntity
      attribute :prestador, Nfse::Entities::TcIdentificacaoPrestador
      attribute :protocolo, Types::String
    end
  end
end