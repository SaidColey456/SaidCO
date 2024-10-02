renta_anual = 1500

puts "¿Cuál es tu renta anual? #{renta_anual}"

if renta_anual <= 10
    puts "Tu descuento es de 20%"
elsif renta_anual <= 100
    puts "Tu descuento es de 10%"
elsif renta_anual < 1000
    puts "Tu descuento es de 5%"
elsif renta_anual >= 1000 && renta_anual <= 2000
    puts "Tu descuento es de 20%"
else
    puts "Tu descuento es de 1%"
end