# Como fiz o teste?
Efetuei duas versões, uma feita em Ruby e outra utilizando Rails API

# Rodar teste com Ruby
- Git clone do projeto
- Entrar na pasta ruby_puro
- Executar: ruby test.rb
- Seguir as informações do programa.

# Rodar teste com Rails API + Postman
- Git clone do projeto
- Preparar o ambiente (bundler install / rails db:create, rails db:migrate / rails s)
- Abrir o sotware POSTMAN
- Preencher o endereço com localhost:3000/api/v1/authors
- Alterar para POST
- Preencher o Header com o Key: Content-Type, Value: application/json
- Preencher o body.
Eh necesserario que seja uma hash com os campos names_total(total de nomes que serão cadastrados) e names com os nomes dentro de um array.
Exemplo:
{ 
  names_total: X 
  names: ['Cassiano Mangini', 'XXxxXXXx', XXxxxxXX']
 }
 Clicar em SEND para ter o retorno dos nomes formatados.
