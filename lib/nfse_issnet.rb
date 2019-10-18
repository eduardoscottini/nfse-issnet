require "nfse_issnet/version"
require 'nfse_issnet/configuration'
require "dry-validation"
require 'dry-struct'
require 'nfse_issnet/entities/base_entity'
require "nfse_issnet/entities/tc_cpf_cnpj"
require "nfse_issnet/entities/tc_identificacao_prestador"
require "nfse_issnet/entities/servico_consultar_nfse_envio"
require "nfse_issnet/entities/tc_endereco"
require "nfse_issnet/entities/tc_contato"
require "nfse_issnet/entities/tc_valores"
require "nfse_issnet/entities/tc_identificacao_intermediario_servico"
require "nfse_issnet/entities/tc_identificacao_tomador"
require "nfse_issnet/entities/tc_dados_servico"
require "nfse_issnet/entities/tc_dados_tomador"
require "nfse_issnet/entities/tc_dados_prestador"
require "nfse_issnet/entities/tc_identificacao_rps"
require "nfse_issnet/entities/tc_inf_rps"
require "nfse_issnet/entities/tc_rps"
require "nfse_issnet/entities/tc_lote_rps"
require "nfse_issnet/entities/nota_fiscal"
require "nfse_issnet/entities/servico_enviar_lote_rps_envio"
require "nfse_issnet/entities/servico_consultar_nfse_por_rps_envio"
require "nfse_issnet/entities/servico_consultar_lote_rps_envio"

require "nfse_issnet/utils/utils"
require "nfse_issnet/utils/xml"
require "nfse_issnet/utils/assinatura"


require "nfse_issnet/base"
require "nfse_issnet/operations/consulta_nfse"
require "nfse_issnet/operations/envia_lote_rps"
require "nfse_issnet/operations/consulta_nfse_por_rps"
require "nfse_issnet/operations/consulta_lote_rps"

require "nfse_issnet/responses/base"
require "nfse_issnet/responses/consulta_nfse"
require "nfse_issnet/responses/consulta_nfse_por_rps"
require "nfse_issnet/responses/consulta_lote_rps"
require "nfse_issnet/responses/envia_lote_rps"

require 'gyoku'
require 'savon'
require 'slim'
require 'ox'
require 'xmldsig'

module NfseIssnet
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

    def root
      File.expand_path '../..', __FILE__
    end
  end


end
