module NfseIssnet
  module Entities
    class ServicoEnviarLoteRpsEnvio < BaseEntity
      attribute :lote_rps, NfseIssnet::Entities::TcLoteRps
    end
  end
end