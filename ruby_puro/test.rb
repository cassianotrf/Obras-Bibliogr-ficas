require_relative "author"

authors = Author.new

x = 1
nomes = []
qtdade_nomes = ''

puts 'Digite a quantidade de nomes que serão registrados:'
qtdade_nomes = gets.chomp
qtdade_nomes.to_i.times do
  puts "Digite o nome da pessoa #{x}:"
  nomes.push(gets.chomp)
  x += 1
end
x = 1
nomes_formatados = authors.format_names(qtdade_nomes.to_i,nomes)
puts
puts 'Lista de Pessoas'
puts
nomes_formatados.each do |nome|
  puts "Pessoa #{x}: #{nome}"
  x += 1
end
puts
