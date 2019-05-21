module Nfse
  module Entities
    module Types
      include Dry.Types

      LeituraSimNao = Bool.enum(true => '1', false => '2')
    end
    class BaseEntity < Dry::Struct
    end
  end
end