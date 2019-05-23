module NfseIssnet
  module Entities
    class TcValores < BaseEntity
      attribute :base_calculo, Types::Coercible::Float
      attribute :valor_servicos, Types::Coercible::Float
      attribute :iss_retido, Types::Coercible::Integer.enum(1,2)
      attribute :aliquota, Types::Coercible::Float
      attribute :valor_iss, Types::Coercible::Float
      attribute? :outras_retencoes, Types::Coercible::Decimal
      attribute? :valor_deducoes, Types::Coercible::Decimal
      attribute? :valor_pis, Types::Coercible::Decimal
      attribute? :valor_cofins, Types::Coercible::Decimal
      attribute? :valor_inss, Types::Coercible::Decimal
      attribute? :valor_ir, Types::Coercible::Decimal
      attribute? :valor_csll, Types::Coercible::Decimal
      attribute? :valor_liquido_nfse, Types::Coercible::Decimal
      attribute? :valor_iss_retido, Types::Coercible::Decimal
      attribute? :desconto_condicionado, Types::Coercible::Decimal
      attribute? :desconto_incondicionado, Types::Coercible::Decimal
    end
  end
end