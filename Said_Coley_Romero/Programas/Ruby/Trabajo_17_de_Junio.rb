puts "Ingrese cantidad de estudiantes:"
e = gets.chomp.to_i

for i in 1..e
  puts "Introduce tu nombre:"
  n4M3 = gets.chomp
  many = n4M3.length - 1
  inVert = ""
  for j in (many..0).step(-1)
    z = n4M3[j]
    inVert = inVert + z
  end
  puts("Tu nombre es #{n4M3} y la forma inversa es #{inVert}")
end