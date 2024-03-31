# Modelagem dos dados

## Criar uma modelagem seguindo os princípios de Kimball, Data Vault ou outro

### Kimball Modeling

- Dimensões:
  - Dimensão Tempo - Tabela DimDate.csv
  - Dimensão Produto - Tabela DimProduct.csv
  - Dimensão Cliente - Tabela DimCustomer.csv
  - Dimensão Geografica - Tabela DimGeography.csv

- Tabelas de Fatos:
  - Tabela de Fatos Vendas - Tabela FactInternetSales.csv

## Explicar e justificar o modelo criado com 2 visões finais dos dados

- O modelo de Kimball enfatiza a simplicidade, a facilidade de uso e o entendimento para os usuários finais. Com este modelo é possivel fazer analises robustas e eficientes sobre as vendas, de modo que os usuários explorem os dados de vendas por perspectivas diferentes, como a data, produtos e cliente e território.

- Este modelo foi escolhido porque se alinha bem com as necessidades de relatórios e análises da empresa. A curva de aprendizado deste modelo é baixa, por ele ter uma estrutura clara e organizada para armazenar os dados e manipula-los sob diferentes dimensões.