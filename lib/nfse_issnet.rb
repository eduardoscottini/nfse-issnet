require "nfse_issnet/version"
require 'nfse_issnet/configuration'
require "dry-validation"
require 'dry-struct'
require 'pry'
require 'gyoku'
require 'savon'
require 'slim'
require 'ox'
require 'xmldsig'

require "nfse_issnet/base"
require 'loaders/utils'
require 'loaders/entities'
require 'loaders/operations'

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
  end


end
