module NfseIssnet
  module Entities
    class ServicoEnviarLoteRpsEnvio < BaseEntity
      attribute :lote_rps, Nfse::Entities::TcLoteRps
    end
  end
end