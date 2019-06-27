module Utils
  module Utils
    class << self
      def snakecase(key)
        #gsub(/::/, '/').
        key.gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').
          gsub(/([a-z\d])([A-Z])/, '\1_\2').
          tr('-', '_').
          gsub(/\s/, '_').
          gsub(/__+/, '_').
          downcase
      end

      def remove_quebras(str)
        str.gsub(/\n/, '').gsub(/\t/, '').strip
      end
    end
  end
end