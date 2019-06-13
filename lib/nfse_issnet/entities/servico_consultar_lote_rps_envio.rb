module NfseIssnet
  module Entities
    class ServicoConsultarLoteRpsEnvio < BaseEntity
      attribute :prestador, NfseIssnet::Entities::TcIdentificacaoPrestador
      attribute :protocolo, Types::String
    end
  end
end