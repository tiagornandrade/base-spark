# README - Repositório Base de Cluster Spark

Este repositório contém configurações básicas para a criação de um cluster Spark usando Docker Compose. O cluster é composto por um nó master Spark e um ou mais nós worker Spark.

## Pré-requisitos

Certifique-se de ter o Docker e o Docker Compose instalados na sua máquina.

## Configuração

O arquivo `docker-compose.yml` contém a configuração do cluster Spark. Você pode ajustar os parâmetros conforme necessário para atender aos requisitos do seu projeto.

### Serviços

- **spark**: Este serviço representa o nó master do cluster Spark. Ele está configurado para expor as seguintes portas:
  - `8080`: Para acessar a interface web do Spark.
  - `7077`: Para comunicação interna dentro do cluster.

- **spark-worker**: Este serviço representa um nó worker do cluster Spark. É configurado para se comunicar com o nó master e tem recursos definidos, como memória e núcleos.

## Como usar

1. Clone este repositório para sua máquina local.
2. Navegue até o diretório onde o repositório foi clonado.
3. Execute o seguinte comando para iniciar o cluster:

```
docker-compose up
```

Cria o ambiente virtual

```
virtualenv venv
```

Ativa o ambiente virtual
```
source venv/bin/activate
```

E executa o arquivo Python
```
python3 hello-pyspark.py
```

Isso criará os contêineres para o nó master e os nós worker conforme definido no arquivo `docker-compose.yml`.

## Personalização

Você pode personalizar a configuração do cluster ajustando os parâmetros no arquivo `docker-compose.yml`. Por exemplo, você pode modificar o número de nós worker, a quantidade de memória alocada para cada nó e outros parâmetros de configuração do Spark.

Lembre-se de que este é um cluster básico para fins de desenvolvimento e teste. Para ambientes de produção, considere ajustar as configurações de acordo com as necessidades específicas do seu projeto e os requisitos de desempenho.

## Observações de Segurança

Este cluster Spark é configurado com opções de segurança desabilitadas para simplificar a configuração e a execução em ambientes locais. Em um ambiente de produção, é altamente recomendável habilitar medidas de segurança apropriadas, como autenticação, criptografia e SSL.

## Suporte

Se você tiver alguma dúvida ou encontrar problemas ao usar este repositório, sinta-se à vontade para abrir uma issue aqui no GitHub. Estamos sempre dispostos a ajudar.

Aproveite o seu cluster Spark! 🚀
