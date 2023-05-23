=begin
1. Escribe una función que reciba un número entero como parámetro y
escribe en la pantalla si es un número par o impar.
=end

puts "--------------------------------------------"

def par_impar (numero)
  if numero %2 == 0
    puts "el numero #{numero} es par"
  else
    puts "el numero #{numero} es impar"
  end
end

numero = 7

par_impar(numero)

#salida
# el numero 7 es impar

=begin
2. Escribe una función que devuelva el factorial de un número dado, usando iteración.
=end

puts "--------------------------------------------"

def factorial_iterativo(numero)
  resultado = 1

  # Iterar desde 1 hasta el número dado
  (1..numero).each do |i|
    resultado *= i
  end

  return resultado
end

# Ejemplo de uso:
numero = 5

factorial = factorial_iterativo(numero)
puts "El factorial de #{numero} es: #{factorial}"

#salida
#El factorial de 5 es: 120

=begin
3. Escribe una función que devuelva el factorial de un número dado, usando
recursividad
=end

puts "--------------------------------------------"

def factorial_recursivo(numero)
  if numero == 0 || numero == 1
    return 1
  else
    return numero * factorial_recursivo(numero - 1)
  end
end

# Ejemplo de uso:
numero = 5
factorial = factorial_recursivo(numero)
puts "El factorial de #{numero} es: #{factorial}"

=begin
4. Escribe una función que devuelva verdadero si un número dado es primo y falso
de lo contrario.
=end

puts "--------------------------------------------"


def es_primo(numero)
  if numero <= 1
    return false
  end

  # Verificar divisibilidad del número por todos los valores entre 2 y la raíz cuadrada del número
  (2..Math.sqrt(numero)).each do |i|
    if numero % i == 0
      return false
    end
  end

  return true
end

# Ejemplo de uso:
numero = 17
if es_primo(numero)
  puts "#{numero} es un número primo."
else
  puts "#{numero} no es un número primo."
end

=begin
Escribe una función que reciba una cadena y un número entero,
devolviendo una matriz que contiene las palabras de esa cadena cuyo tamaño es
mayor que el número recibido
=end

puts "--------------------------------------------"

def palabras_mayores(cadena, numero)
  palabras = cadena.split(" ")
  palabras_filtradas = palabras.select { |palabra| palabra.length > numero }
  return palabras_filtradas
end

# Ejemplo de uso:
cadena = "Esta es una cadena de ejemplo"
numero = 3
resultado = palabras_mayores(cadena, numero)
puts "Palabras mayores a #{numero}: #{resultado.inspect}"

puts "--------------------------------------------"
