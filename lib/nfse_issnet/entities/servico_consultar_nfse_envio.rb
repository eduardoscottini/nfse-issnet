module NfseIssnet
  module Entities
    class ServicoConsultarNfseEnvio < BaseEntity
      attribute :prestador, NfseIssnet::Entities::TcIdentificacaoPrestador
    end
  end
end