module NfseIssnet
  module Entities
    class ServicoConsultarNfsePorRpsEnvio < BaseEntity
      attribute :prestador, NfseIssnet::Entities::TcIdentificacaoPrestador
      attribute :identificacao_rps, NfseIssnet::Entities::TcIdentificacaoRps
    end
  end
end