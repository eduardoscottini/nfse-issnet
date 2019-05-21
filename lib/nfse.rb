require "nfse/version"
require 'nfse/configuration'
require "dry-validation"
require 'dry-struct'
require 'pry'
require 'nfse/entities/base_entity'
require "nfse/entities/tc_cpf_cnpj"
require "nfse/entities/tc_identificacao_prestador"
require "nfse/entities/servico_consultar_nfse_envio"
require "nfse/entities/tc_endereco"
require "nfse/entities/tc_contato"
require "nfse/entities/tc_valores"
require "nfse/entities/tc_identificacao_intermediario_servico"
require "nfse/entities/tc_identificacao_tomador"
require "nfse/entities/tc_dados_servico"
require "nfse/entities/tc_dados_tomador"
require "nfse/entities/tc_dados_prestador"
require "nfse/entities/tc_identificacao_rps"
require "nfse/entities/tc_inf_rps"
require "nfse/entities/tc_rps"
require "nfse/entities/tc_lote_rps"
require "nfse/entities/nota_fiscal"
require "nfse/entities/servico_enviar_lote_rps_envio"
require "nfse/entities/servico_consultar_nfse_por_rps_envio"
require "nfse/entities/servico_consultar_lote_rps_envio"

require "nfse/utils/utils"
require "nfse/utils/xml"
require "nfse/utils/assinatura"


require "nfse/base"
require "nfse/operations/consulta_nfse"
require "nfse/operations/envia_lote_rps"
require "nfse/operations/consulta_nfse_por_rps"
require "nfse/operations/consulta_lote_rps"

require "nfse/responses/base"
require "nfse/responses/consulta_nfse"
require "nfse/responses/consulta_nfse_por_rps"
require "nfse/responses/consulta_lote_rps"
require "nfse/responses/envia_lote_rps"

require 'gyoku'
require 'savon'
require 'slim'
require 'ox'
require 'xmldsig'

module Nfse
  class Error < StandardError; end

  class << self
    attr_accessor :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def reset
      @configuration = Configuration.new
    end

    def configure
      yield(configuration)
    end
  end


end
