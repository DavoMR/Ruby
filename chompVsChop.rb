=begin
Puedes eliminar el carácter de salto de línea usando chop o chomp.
En la mayoría de los casos, chomp es preferible porque no eliminará el carácter final
a menos que sea el separador de registros, que suele ser una nueva línea,
mientras que chop eliminará el último carácter sin importar cuál sea.
=end

#S1 en este caso tiene un salto de linea

S1 = "Hola mundo
"
S2 = "Hola ITM"

print S1
puts S2

#vemos que se respeta el salto de linea puesto en S1

print S1.chomp
puts S2

#vemos que el chomp elimina el salto de linea de S1

print S1.chop
puts S2

#vemos que el chop elimina el salto de linea de S1

puts S1
puts S2.chop

#vemos que al poner chop al S2 borra su ultimo caracter

print S1
puts S2.chomp

#vemos que al poner chomp al S2 no borra su ultimo caracter ya que solo borra el salto de linea.
