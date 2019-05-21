module Nfse
  module Entities
    class NotaFiscal < BaseEntity
      attribute :numero, Types::Coercible::Integer
      attribute :servico, Nfse::Entities::TcDadosServico
      attribute :tomador_servico, Nfse::Entities::TcDadosTomador
      attribute :prestador_servico, Nfse::Entities::TcDadosPrestador
      attribute? :codigo_verificacao, Types::Coercible::String
      attribute? :data_emissao, Types::Params::DateTime
      attribute? :competencia, Types::Params::Date
      attribute? :natureza_operacao, Types::Coercible::Integer
      attribute? :regime_especial_tributacao, Types::Coercible::Integer
      attribute? :optante_simples_nacional, Types::LeituraSimNao
      attribute? :incentivador_cultural, Types::LeituraSimNao
      attribute? :nfse_substituida, Types::Coercible::Integer
      attribute? :outras_informacoes, Types::String
    end
  end
end