Feature: Conteúdo
  As a Usuário Comum
  I want to Descobrir onde um determinado título está disponível para assistir
  So that Eu possa assistir e avaliar no programa
  
  
  Scenario: Nenhum dado disponível sobre a pesquisa
    Given Estou na página "Pesquisar"
    When Pesquiso por "asfdssfg"
    Then O sistema procura por "asfdssfg" na base de dados
    And Não encontra nenhuma informação sobre a pesquisa do usuário
    Then O programa informa ao usuário que não há nenhum dado disponível sobre "asfdssfg"

  Scenario: Filme pesquisado não disponível na região
    Given Estou na página "Pesquisar"
    When Pesquiso por "The Wall"
    Then O sistema procura por "The Wall" na base de dados
    And Encontra dados sobre o filme
    And Nesses dados diz que o filme não está disponível para a região
    Then O programa informa ao usuário que "The Wall" não está disponível para a região

  Scenario: Filme pesquisado em cartaz nos cinemas
    Given Estou na página "Pesquisar"
    When Pesquiso por "Indiana Jones Relíquia do Destino"
    Then O sistema procura por "Indiana Jones Relíquia do Destino" na base de dados
    And Encontra dados sobre o filme
    And Nos dados mostra que o filme está disponível nos cinemas
    Then O programa informa ao usuário que "Indiana Jones Relíquia do Destino" está disponível nos cinemas

  Scenario: Filme pesquisado disponível em algum streaming
    Given Estou na página "Pesquisar"
    When Pesquiso por "Django Livre"
    Then O sistema procura por "Django Livre" na base de dados
    And Encontra dados sobre o filme
    And Nos dados mostra que "Django Livre" está disponível na "Netflix"
    Then O programa informa ao usuário que ele pode assistir "Django Livre" na "Netflix"
    



