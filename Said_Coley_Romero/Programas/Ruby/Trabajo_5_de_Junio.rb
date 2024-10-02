puts "Cuantos estudiantes colaboran con el recaudo:"
dintotal = gets.chomp.to_i

cantidad1= 0
cantidad2= 0
acumulado1= 0
acumulado2= 0

for n in 1..dintotal

    puts "Cantidad de dinero que quiere donar el estudiante:"
    monecash = gets.chomp.to_i

    if monecash >= 5000
        puts "Cantidad aportada adecuadamente:: #{monecash}"
        cantidad1 = cantidad1 + 1
        acumulado1 = acumulado1 + monecash
    else
        puts "cantidad aportada adecuadamente: #{monecash}"
        cantidad2 = cantidad2 + 1
        acumulado2 = acumulado2 + monecash
    end
end

t0t4l = acumulado1 + acumulado2
pR0M = t0t4l / dintotal
pR0M1 = acumulado1 / cantidad1
pR0M2 = acumulado2 / cantidad2

puts "Dinero total aportado por los estudiantes: #{t0t4l}"
puts "Promedio general de los aporte: #{pR0M}"
puts "Cuantos dieron mas o igual de 5000 pesos: #{cantidad1}"
puts "Cuantos dieron menos de 5000 pesos: #{cantidad2}"
puts "Cuanto fue el valor total por los estudiantes mayor o igual de 5000: #{acumulado1}"
puts "Cuanto fue el valor total por los estudiantes menor de 5000: #{acumulado2}"
puts "Promedio de dinero de los estudiantes que dieron mas o igual de 5000 es: #{pR0M1}"
puts "Promedio de dinero de los estudiantes que dieron menor de 5000 es: #{pR0M2}"