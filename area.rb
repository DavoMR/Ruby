puts "-------------------------------------------------------------------\n\n"
puts "Bienvenido a la calculadora de areas de figuras geometricas\n\n"
puts "Elija el número de la figura geometrica que desee encontrar su area\n\n"
puts "1. circulo"
puts "2. Triangulo"
puts "3. Cuadro"
puts "4. Rectangulo"
puts "5. Trapecio\n\n"

option = gets.chomp.to_f

case option

 when 1
  puts "Eligiste el circulo\n\n"
  puts "Ingrese el radio del criculo\n\n"
  num1 = gets.chomp.to_f
  area =  Math::PI * num1**2
  puts "El area del circulo es : #{area}\n\n"
 when 2
  puts "Eligiste el el triangulo\n\n"
  puts "Ingrese la altura del triabgulo\n\n"
  num1 = gets.chomp.to_f
  puts "Ingrese la base del triangulo\n\n"
  num2 = gets.chomp.to_f
  area =  (num1*num2)/2
  puts "El area del triangulo es : #{area}\n\n"
 when 3
  puts "Eligiste elo el cuadrado\n\n"
  puts "Ingrese un lado del cuadrado\n\n"
  num1 = gets.chomp.to_f
  area = num1**2
  puts "El area del cuadrado es : #{area}\n\n"
 when 4
  puts "Eligiste el el rectangulo\n\n"
  puts "Ingrese la base del rectangulo\n\n"
  num1 = gets.chomp.to_f
  puts "Ingrese la altura del rectangulo\n\n"
  num2 = gets.chomp.to_f
  area = num1*num2
  puts "el area del resctangulo es : #{area}\n\n"
 when 5
  puts "Eligiste el el trapecio\n\n"
  puts "Ingrese la base pequeña del trapecio\n\n"
  num1 = gets.chomp.to_f
  puts "Ingrese la base grande del trapecio\n\n"
  num2 = gets.chomp.to_f
  puts "Ingrese la altura del trapecio\n\n"
  num3 = gets.chomp.to_f
  area = ((num1+num2)*num3)/2
  puts "El are del trapecio es : #{area}\n\n"
 else
  puts "Opcion no validad\n\n"
end
