puts "Número de estudiantes:"
num_estudiantes = gets.to_i

for i in 1..num_estudiantes do
    puts "Nombre del estudiante:"
    nombre = gets.chomp
    
    puts "Nota 1:"
    nota1 = gets.to_f
    puts "Nota 2:"
    nota2 = gets.to_f
    puts "Nota 3:"
    nota3 = gets.to_f

    promedio = (nota1 + nota2 + nota3) / 3.0

    if promedio >= 5
        puts "Excelente; aprobado con #{promedio}"
    else
        puts "Su nota es baja, no aprobó. Promedio: #{promedio}"
    end
end