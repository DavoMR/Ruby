# 1. ¿Cómo funcionan los modificadores privados, públicos y protegidos en Ruby?

=begin
En Ruby, los modificadores de acceso (private, public y protected) se utilizan para controlar la visibilidad
de los métodos de una clase.

private: Los métodos marcados como private solo pueden ser llamados desde otros métodos dentro de la misma
clase. No se pueden llamar directamente desde fuera de la clase ni a través de una instancia de la clase.
Los métodos private son útiles cuando deseas encapsular cierta lógica interna de la clase y evitar que se
acceda a ella desde fuera.

public: Los métodos marcados como public pueden ser llamados desde cualquier lugar, ya sea dentro de la
clase, a través de una instancia de la clase o desde fuera de la clase. Por defecto, todos los métodos en
Ruby son públicos, a menos que se especifique lo contrario.

protected: Los métodos marcados como protected se comportan de manera similar a los métodos private, con la
diferencia de que también pueden ser llamados por instancias de la misma clase y de las clases derivadas
(subclases). Es decir, los métodos protected pueden ser accedidos desde otros métodos dentro de la misma
clase y también desde otras instancias de la misma clase o de sus subclases.
=end

puts "Punto 1\n\n"

class Persona
  def initialize(nombre)
    @nombre = nombre
  end

  def saludar
    puts "Hola, soy #{@nombre}!"
  end

  private

  def metodo_privado
    puts "Este es un método privado"
  end

  protected

  def metodo_protegido
    puts "Este es un método protegido"
  end
end

persona = Persona.new("David")

persona.saludar # Llamada a un método público

#persona.metodo_privado # Generaría un error, ya que el método es privado

#persona.metodo_protegido # Generaría un error, ya que el método es protegido

=begin
La función send en Ruby te permite llamar a un método privado o protegido utilizando su nombre como símbolo
(por ejemplo, :metodo_privado). Esto permite sortear las restricciones de acceso y llamar a los métodos
privados o protegidos desde fuera de la clase.

persona.send(:metodo_privado)

persona.send(:metodo_protegido)

Sin embargo, debes tener en cuenta que el uso de send para llamar a métodos privados o protegidos desde
fuera de la clase no es una buena práctica, ya que viola la encapsulación y puede hacer que el código sea
más difícil de entender y mantener. Se recomienda respetar los modificadores de acceso y acceder a los
métodos a través de los métodos públicos apropiados.
=end

puts "---------------------------------------------------------------------------\n\n"



# 2. ¿Cómo puedo hacer para configurar el método de inicialización, para que funcione recibiendo argumentos
# opcionales?

puts "Punto 2\n\n"

class Persona
  def initialize(nombre, edad = nil)
    @nombre = nombre
    @edad = edad
  end

  def saludar
    puts "Hola, soy #{@nombre}!"
    puts "Tengo #{@edad} años." if @edad
  end
end

persona1 = Persona.new("Juan")
persona1.saludar #Hola, soy Juan!
puts "---------------------------------------------------------------------------"
persona2 = Persona.new("María", 30)
persona2.saludar# Hola, soy María! Tengo 30 años.


=begin
En este ejemplo, el método initialize se define con dos parámetros: nombre y edad. Sin embargo, el parámetro
edad tiene asignado un valor por defecto de nil. Esto significa que si no se proporciona un valor para edad
al crear una instancia de Persona, se utilizará nil como valor por defecto.

En la primera instancia, persona1, se crea sin proporcionar un valor para edad, por lo que se utiliza el
valor por defecto nil. En la segunda instancia, persona2, se proporciona un valor de 30 para edad.

Dentro del método saludar, se verifica si @edad tiene un valor asignado antes de imprimirlo. De esta manera,
si no se proporcionó un valor para edad, no se mostrará la línea correspondiente en la salida.
=end

puts "---------------------------------------------------------------------------\n\n"


=begin
3. Cree una clase de Estudiante con los siguientes componentes:
• Atributos de instancia: nombre completo, dirección, teléfono, edad
• Un atributo de clase con el nombre de la universidad
• El método de inicialización
• Solo lectores de acceso para todos los atributos
• Un método que devuelve verdadero si el estudiante es menor de edad
• Un método que devuelve verdadero si la edad del estudiante es mayor de 27 años
=end

puts "Punto 3\n\n"

class Estudiante
  attr_reader :nombre_completo, :direccion, :telefono, :edad
  @@universidad = "ITM"

  def initialize(nombre_completo, direccion, telefono, edad)
    @nombre_completo = nombre_completo
    @direccion = direccion
    @telefono = telefono
    @edad = edad
  end

  def menor_de_edad?
    @edad < 18
  end

  def mayor_de_27?
    @edad > 27
  end

  def self.universidad
    @@universidad
  end
end

estudiante = Estudiante.new("Martha Rivera", "Carrera 13 # 4-95", "2891168", 15)

puts "Nombre: #{estudiante.nombre_completo}"
puts "Dirección: #{estudiante.direccion}"
puts "Teléfono: #{estudiante.telefono}"
puts "Edad: #{estudiante.edad}"
puts "Es menor de edad: #{estudiante.menor_de_edad?}"
puts "Es mayor de 27 años: #{estudiante.mayor_de_27?}"
puts "Universidad: #{Estudiante.universidad}"

puts "---------------------------------------------------------------------------\n\n"
