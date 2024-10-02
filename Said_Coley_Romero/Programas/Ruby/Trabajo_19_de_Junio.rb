puts "Ingrese la cantidad de estudiantes:"
dattos = gets.chomp.to_i

for i in 1..dattos

    puts "Diga su nombre acontinuacion:"
    n4m3 = gets.chomp
    puts "Diga su municipio acontinuacion:"
    mUn1 = gets.chomp
    puts "Diga su placa acontinuacion:"
    plak4 = gets.chomp

    n4m3cantt = n4m3[(n4m3.length-2)..n4m3.length]
    mUn1cantt = mUn1[0..2]
    plak4cantt = plak4[(plak4.length-3)..plak4.length]
    puts "Su codigo es: " + mUn1cantt + n4m3cantt + plak4cantt
end