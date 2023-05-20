=begin
1. ¿Para qué se utilizan las instrucciones break y next, y dentro de qué
¿declaraciones?

las instrucciones break y next se utilizan dentro de bucles (como while, for, each, etc.) y dentro de
bloques de código (como do...end, {...}, begin...end, etc.). Veamos cómo se utilizan y qué hacen:

Instrucción break:
La instrucción break se utiliza para salir inmediatamente de un bucle o un bloque de código.
Cuando se ejecuta break, el control del programa sale del bucle o bloque actual y continúa con la siguiente
instrucción después del bucle o bloque.
Esto puede ser útil cuando se necesita terminar un bucle antes de que se cumpla la condición de finalización
o cuando se desea salir de un bloque antes de que se complete su ejecución normal.
=end

puts "----------------------------------------------------------------"

=begin
2. ¿Para qué son estos iteradores? Escribe un ejemplo sencillo de cada uno de ellos:
a. Cada iterador
b. iterador de tiempos
C. recopilar iterador
=end

=begin
a. Iterador Each:
El iterador each se utiliza para recorrer elementos en un objeto enumerable, como un arreglo o un hash. Permite realizar una acción en cada elemento sin necesidad de usar un índice explícito.

Ejemplo de uso del iterador each con un arreglo:
=end

frutas = ['manzana', 'banana', 'naranja']

frutas.each do |fruta|
  puts fruta.capitalize
end

# Salida:
# Manzana
# Banana
# Naranja

puts "----------------------------------------------------------------"

=begin
Iterador Times:
El iterador times se utiliza para ejecutar un bloque de código un número específico de veces. Es útil cuando
quieres repetir una acción un número conocido de iteraciones.

Ejemplo de uso del iterador times:
=end

5.times do |i|
  puts "Iteración #{i + 1}"
end

# Salida:
# Iteración 1
# Iteración 2
# Iteración 3
# Iteración 4
# Iteración 5

puts "----------------------------------------------------------------"

=begin
c. Iterador Collect (también conocido como map):
El iterador collect, o su equivalente map, se utiliza para iterar sobre una colección y crear un nuevo
arreglo con los resultados de aplicar un bloque de código a cada elemento. Retorna un nuevo arreglo que
contiene los elementos transformados.

Ejemplo de uso del iterador collect:
=end

numeros = [1, 2, 3, 4, 5]

numeros_al_cuadrado = numeros.collect do |num|
  num * num
end

puts numeros_al_cuadrado.inspect

# Salida:
# [1, 4, 9, 16, 25]

puts "----------------------------------------------------------------"

# 3.Escriba un programa que imprima los números entre 1 y 100.

(1..100).each do |numero|
  puts numero
end

puts "----------------------------------------------------------------"

#4. Escriba un programa que imprima el factorial de un número dado.

def factorial(numero)
  if numero == 0 || numero == 1
    return 1
  else
    resultado = 1
    while numero > 1
      resultado *= numero
      numero -= 1
    end
    return resultado
  end
end

# Ejemplo de uso:
numero = 5
factorial_resultado = factorial(numero)
puts "El factorial de #{numero} es #{factorial_resultado}."

# Salida:
# El factorial de 5 es 120.

puts "----------------------------------------------------------------"

#5. Escriba un programa que itere sobre una cadena (párrafo) e imprima:

#a. La palabra más corta.

parrafo = "Anita lava la tina"

def encontrar_palabra_mas_corta(parrafo)
  palabras = parrafo.split(" ")
  palabra_mas_corta = palabras.min_by { |palabra| palabra.length }
  return palabra_mas_corta
end

palabra_mas_corta = encontrar_palabra_mas_corta(parrafo)
puts "Palabra más corta: #{palabra_mas_corta}"

puts "----------------------------------------------------------------"

#b. La obra más larga.

def encontrar_palabra_mas_larga(parrafo)
  palabras = parrafo.split(" ")
  palabra_mas_larga = palabras.max_by { |palabra| palabra.length }
  return palabra_mas_larga
end

palabra_mas_larga = encontrar_palabra_mas_larga(parrafo)
puts "Palabra más larga: #{palabra_mas_larga}"

puts "----------------------------------------------------------------"

#C. Los palíndromos presentes en el párrafo.

def es_palindromo?(palabra)
  palabra = palabra.downcase.gsub(/\W/, '')  # Eliminar caracteres no alfanuméricos y convertir a minúsculas
  palabra == palabra.reverse
end

if es_palindromo?(parrafo)
  puts "#{parrafo} es un palíndromo."
else
  puts "#{parrafo} no es un palíndromo."
end


puts "----------------------------------------------------------------"


