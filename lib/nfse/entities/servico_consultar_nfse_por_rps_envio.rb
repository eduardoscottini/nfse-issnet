module Nfse
  module Entities
    class ServicoConsultarNfsePorRpsEnvio < BaseEntity
      attribute :prestador, Nfse::Entities::TcIdentificacaoPrestador
      attribute :identificacao_rps, Nfse::Entities::TcIdentificacaoRps
    end
  end
end