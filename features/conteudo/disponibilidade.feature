Feature: Conteúdo
  As a Usuário Comum
  I want to Descobrir onde um determinado título está disponível para assistir
  So that Eu possa assistir e avaliar no programa
  
  
  Scenario: Nenhum dado disponível sobre a pesquisa
    Given Estou na página "Pesquisar"
    And Pesquiso por um título de filme
    Then O sistema procura pelo título na base de dados
    And Não encontra nenhuma informação sobre a pesquisa do usuário
    Then O programa informa ao usuário que não há nenhum dado disponível sobre o título pesquisado

  Scenario: Filme pesquisado não disponível na região
    Given Estou na página "Pesquisar"
    And Pesquiso por um título de filme
    Then O sistema procura pelo título na base de dados
    And Encontra dados sobre o filme
    And Nesses dados diz que o filme em questão não está disponível para a região
    Then O programa informa ao usuário que o filme não está disponível para a região

  Scenario: Filme pesquisado em cartaz nos cinemas
    Given Estou na página "Pesquisar"
    And Pesquiso por um título de filme
    Then O sistema procura pelo título na base de dados
    And Encontra dados sobre o filme
    And Nos dados mostra que o filme está disponível nos cinemas
    Then O programa informa ao usuário que o filme está disponível nos cinemas

  Scenario: Filme pesquisado disponível em algum streaming
    Given Estou na página "Pesquisar"
    And Pesquiso por um título de filme
    Then O sistema procura pelo título na base de dados
    And Encontra dados sobre o filme
    And Nos dados mostra que o filme está disponível em algum streaming
    Then O programa busca em qual(is) streaming(s) o filme pode ser assistido
    Then O programa informa ao usuário por onde ele pode assistir
    



