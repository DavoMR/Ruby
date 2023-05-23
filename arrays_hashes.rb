#¿PODEMOS TENER HASHES COMO ELEMENTOS DE ARRAYS?
puts "-----------------------------------------------\n\n"
edades = [{"David"=>34},{"Lorena"=>28}]
puts edades
puts "-----------------------------------------------"
edades[0]["David"] = "30"
edades[-1]["Lorena"] = "25"
puts edades
puts "-----------------------------------------------\n\n"

#Con este ejemplo podemos ver que si es posible.

#------------------------------------------------------------------

#¿PODEMOS TENER ARRAYS COMO ELEMENTOS DENTRO DE HASHES?

estudiantes = {"nombres"=>["David","Lorena","Juan"], "edades"=>[34,28,30]}
puts estudiantes
puts "-----------------------------------------------"
estudiantes["nombres"][0]= "Fernando"
estudiantes["edades"][1]= "25"
puts estudiantes
puts "-----------------------------------------------\n\n"

#Con este ejemplo podemos ver que si es posible.

#------------------------------------------------------------------

#¿PUEDE UN ARRAY O UN HASH SER LA CLAVE DE CUALQUIER ELEMENTO HASH?

#Usar un array como clave de un elemento hash

profesores = {[1,2,3]=>"primaria",[4,5,6]=>"secundaria"}
puts profesores
profesores[[1,2,3]]= "secundaria"
puts profesores
puts "-----------------------------------------------\n\n"

#Con este ejemplo podemos ver que si es posible.

#------------------------------------------------------------------

#Usar un hash como clave de un elemento hash

pareja1 = {"David"=>34,"Lorena"=>28}
pareja2 = {"Juan"=>30,"Maria"=>27}
datos = {pareja1=>"edad pareja1",pareja2=>"edad pareja 2"}
puts pareja1
puts "-----------------------------------------------"
puts pareja2
puts "-----------------------------------------------"
puts datos
puts "-----------------------------------------------"
datos[pareja1]="edad pareja 3"
puts datos
puts "-----------------------------------------------\n\n"

#Con este ejemplo podemos ver que si es posible.

#------------------------------------------------------------------

#ESCRIBA UN ARRAY QUE ALMACENE, EN ORDEN, LOS DOMINIOS MÁS POPULARES EN COLOMBIA,
#SEGÚN https://radar.cloudflare.com/co

dominios = ["google.com", "googleapis.com","gstatic.com","facebook.com","whatsapp.net",
"microsoft.com","tiktokcdn.com","gvt2.com","googlevideo.com","doubleclick.net"]
puts dominios
puts "-----------------------------------------------\n\n"

#ESCRIBE UN HASH QUE ALMACENE LOS DEPARTAMENTOS DE COLOMBIA Y SUS CORRESPONDIENTES CAPITALES.

departamentos = {"Amazonas"=>"Leticia","Antioquia"=>"Medellín","Arauca"=>"Arauca","Atlántico"=>"Barranquilla",
"Bogotá"=>"Bogotá","Bolívar"=>"Cartagena de Indias","Boyacá"=>"Tunja","Caldas"=>"Manizales","Caquetá"=>"Florencia",
"Casanare"=>"Yopal","Cauca"=>"Popayán","Cesar"=>"Valledupar","Chocó"=>"Quibdó","Córdoba"=>"Montería",
"Cundinamarca"=>"Bogotá","Guainía"=>"Inírida","Guaviare"=>"San José del Guaviare","Huila"=>"Neiva",
"La Guajira"=>"Riohacha","Magdalena"=>"Santa Marta","Meta"=>"Villavicencio","Nariño"=>"Pasto",
"Norte de Santander"=>"San José de Cúcuta","Putumayo"=>"Mocoa","Quindío"=>"Armenia","Risaralda"=>"Pereira",
"San Andrés y Providencia"=>"San Andrés","Santander"=>"Bucaramanga","Sucre"=>"Sincelejo","Tolima"=>"Ibagué",
"Valle del Cauca"=>"Cali","Vaupés"=>"Mitú","Vichada"=>"Puerto Carreño"}
puts departamentos
puts "-----------------------------------------------\n\n"

#ESCRIBE UN HASH QUE ALMACENE LOS CÓDIGOS DE LOS SISTEMAS AUTÓNOMOS DE COLOMBIA Y SUS NOMBRES CORRESPONDIENTES,
#SEGÚN https://radar.cloudflare.com/co

sistemAuto = {"AS 3816"=>"COLOMBIA TELECOMUNICACIONES SA ESP","COMO 13489"=>"EPM Telecomunicaciones SAESP",
"COMO 10620"=>"Telmex Colombia S.A.","COMO 19429"=>"ETB - Colombia","COMO 27831"=>"colombia movil"}
puts sistemAuto
puts "-----------------------------------------------\n\n"
