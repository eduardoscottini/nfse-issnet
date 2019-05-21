module Nfse
  module Entities
    class TcDadosServico < BaseEntity
      attribute :valores, Nfse::Entities::TcValores
      attribute :item_lista_servico, Types::Coercible::String.constrained(max_size: 5)
      attribute :codigo_cnae, Types::Coercible::Integer.constrained(lteq: ('9' * 7).to_i)
      attribute :codigo_tributacao_municipio, Types::String.constrained(max_size: 20)
      attribute :discriminacao, Types::String.constrained(max_size: 2000)
      attribute :municipio_prestacao_servico, Types::String
    end
  end
end