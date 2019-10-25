module NfseIssnet
  class Base
    def initialize(xml)
      configure
      validate_configuration

      self.content_xml = entity.new(xml)
    end

    def request
      @original_response = cliente.call(method_wsdl, message: RequisicaoAbrasf.new(xml_builder))
      set_response
    end

    def monta_xml_completo
      cliente.build_request method_wsdl, message: RequisicaoAbrasf.new(xml_builder)
    end

    private

    attr_accessor :content_xml, :method_wsdl, :default_namespace, :entity, :template_xml

    def configure
      self.method_wsdl = nil
      self.default_namespace = nil
      self.entity = nil
      self.template_xml = nil
    end

    def validate_configuration
      method_wsdl or raise NfseIssnet::Error, 'Método wsdl é obrigatório'
      default_namespace or raise NfseIssnet::Error, 'Caminho para schema xml é obrigatório'
      entity or raise NfseIssnet::Error, 'Entidade é obrigatório'
      template_xml or raise NfseIssnet::Error, 'Template XML é obrigatório'
    end

    def cliente
      @cliente ||= Savon.client(wsdl: 'http://www.issnetonline.com.br/webserviceabrasf/bonito/servicos.asmx?wsdl',
                                soap_version: 2,
                                namespace_identifier: :nfd)
    end

    def message_namespaces
      {
        xmlns: default_namespace,
        'xmlns:tc': 'http://www.issnetonline.com.br/webserviceabrasf/vsd/tipos_complexos.xsd'
      }
    end

    def xml_builder
      Utils::XML.render template_xml, message_namespaces: message_namespaces, content_xml: content_xml
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