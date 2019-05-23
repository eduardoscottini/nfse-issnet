module NfseIssnet
  module Entities
    class ServicoConsultarNfseEnvio < BaseEntity
      attribute :prestador, Nfse::Entities::TcIdentificacaoPrestador
    end
  end
end