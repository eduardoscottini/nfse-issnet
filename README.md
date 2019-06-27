# Nfse Issnet

[![Build Status](https://travis-ci.org/eduardoscottini/nfse_issnet.svg?branch=master)](https://travis-ci.org/eduardoscottini/nfse_issnet)
[![Maintainability](https://api.codeclimate.com/v1/badges/f53b3ab25175f4bf5a5b/maintainability)](https://codeclimate.com/github/eduardoscottini/nfse_issnet/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f53b3ab25175f4bf5a5b/test_coverage)](https://codeclimate.com/github/eduardoscottini/nfse_issnet/test_coverage)

Integração simples para geração de nota fiscal de serviço(NFS-e) através do sistema ISSNET.

## Instalação

```ruby
gem 'nfse_issnet', '~> 0.1.0'
```

E então execute:

    $ bundle

Ou

```
gem install nfse_issnet
 ```



## Requisitos:

Necessário um certificado do tipo A1 contendo o CNPJ em que é desejado realizar a integração.

## Configuração
```
# config/initializers/nfse_issnet.rb

NfseIssnet.configure do |config|
  config.certificate_pkcs12_path = './cert.p12'
  config.certificate_pkcs12_password = Senha123
end
```

## Uso

TODO: escrever instruções de uso para geração e consulta de RPS's e NFSe

## Licença

A gem está disponível como open source sob os termos da [Licença MIT](https://opensource.org/licenses/MIT).
