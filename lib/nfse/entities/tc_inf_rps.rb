module Nfse
  module Entities
    class TcInfRps < BaseEntity
      attribute :identificacao_rps, Nfse::Entities::TcIdentificacaoRps
      attribute :data_emissao, Types::DateTime
      attribute :natureza_operacao, Types::Integer.enum(1,2,3,4,5,6)
      attribute? :regime_especial_tributacao, Types::Integer.enum(1,2,3,4)
      attribute :optante_simples_nacional, Types::Integer.enum(1,2)
      attribute :incentivador_cultural, Types::Integer.enum(1,2)
      attribute :status, Types::Integer.enum(1,2)
      attribute? :rps_substituido, Nfse::Entities::TcIdentificacaoRps
      attribute :servico, Nfse::Entities::TcDadosServico
      attribute :prestador, Nfse::Entities::TcIdentificacaoPrestador
      attribute :tomador, Nfse::Entities::TcDadosTomador
      attribute? :intermediario_servico, Nfse::Entities::TcIdentificacaoIntermediarioServico
    end
  end
end