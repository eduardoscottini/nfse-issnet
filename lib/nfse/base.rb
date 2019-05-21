module Nfse
  class Base
    attr_accessor :content_xml
    attr_accessor :cliente

    def initialize(xml)
      self.content_xml = entidade.new(xml)
      self.cliente = Savon.client(wsdl: 'http://www.issnetonline.com.br/webserviceabrasf/homologacao/servicos.asmx?wsdl',
                                  soap_version: 2,
                                  namespace_identifier: :nfd)
    end

    def xml_builder
      raise 'errou'
    end

    def request
      @original_response = cliente.call(metodo_wsdl, message: RequisicaoAbrasf.new(xml_builder))
      set_response
    end

    def monta_xml_completo
      cliente.build_request metodo_wsdl, message: RequisicaoAbrasf.new(xml_builder)
    end

    def metodo_wsdl
      raise 'errou feio'
    end

    class RequisicaoAbrasf
      attr_accessor :xml

      def initialize(xml)
        self.xml = xml
      end

      def to_s
        builder = Builder::XmlMarkup.new

        builder.tag!('nfd:xml') { |b|
          b.cdata! xml
        }

        builder
      end
    end
  end
end