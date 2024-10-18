puts "Nombre:"
n = gets.chomp
puts "Apellido:"
ap = gets.chomp
puts "Número:"
n1 = gets.chomp.to_i
puts "Número:"
n2 = gets.chomp.to_i
puts "Número:"
n3 = gets.chomp.to_i
sum = n1 + n2 + n3
prom = sum /3
puts "Tu nombre completo es #{n} #{ap}"
puts "El promedio de los números es: #{prom}"
