module NfseIssnet
  module Utils
    module XML
      class << self
        def render(file_name, opts = {})
          opts ||= {}
          opts[:context] ||= self

          # Inicializa a variavel xml com nil para comparar se oa rquivo foi de fato encontrado.
          xml = find(file_name, "#{NfseIssnet.root}/lib/nfse_issnet/xml", opts[:context], opts)

          # Lança uma excessão se não for encontrado o xml
          # Deve verificar se é nil pois o arquivo xml pode estar vazio
          if xml.nil?
            raise "Arquivo #{file_name}.xml.slim não encontrado nos diretórios"
          end
          xml
        end

        private

        def namespace_for_tags
          'tc:'
        end

        def find(file_name, dir, context = nil, options = {})
          if File.exists?("#{dir}/#{file_name}.xml.slim")
            %Q{#{Slim::Template.new("#{dir}/#{file_name}.xml.slim", disable_escape: true).render(context, options)}}
          end
        end
      end
    end
  end
end
