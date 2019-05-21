module Nfse
  module Entities
    class TcDadosTomador < BaseEntity
      attribute :identificacao_tomador, Nfse::Entities::TcIdentificacaoTomador
      attribute :razao_social, Types::String.constrained(max_size: 115)
      attribute :endereco, Nfse::Entities::TcEndereco
      attribute? :contato, Nfse::Entities::TcContato.optional
    end
  end
end