getwd()
nuevo_dir = "c:/PracticaGestionDatosR"
setwd(nuevo_dir)
getwd()
dir()
list.files()
if (file.exists(nuevo_dir)){
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else{
  cat("fallo al crear directorio: ", nuevo_dir, "\n")
}

set.seed(124)
registros = 15

#Ejercicio 1
edades_descub = sample (1:130, registros, replace=T)
print(edades_descub)
median(edades_descub, na.rm=T)

#Ejercicio 2
cantid_artef = sample(1:130, registros, replace=T)
print(cantid_artef)
sum(cantid_artef)

#Ejercicio 3
Profundidad_hallaz = sample (1:130, registros, replace=T)
print(Profundidad_hallaz)
max(Profundidad_hallaz)

#Ejercicio 4
mat_encontra = sample (c("Metal", "Lítico", "Cerámico"))
length(mat_encontra)

#Ejercicio 5
años_excav <- sample (1:130, registros, replace=T)
print(años_excav)
sum(años_excav)

#Ejercicio 6
matriz = matrix(c(1:9), nrow=3, ncol=3, byrow=F,
                dimnames = list(c(1970, 1995, 2002), c("Carmona", "Santiponce", "Baelo Claudia")))
print(matriz)
sumafil <- apply(matriz, 1, sum)
print(sumafil)
#2002 año de mas excavaciones.

#Ejercicio 7
matriz<- matrix(c(1:9), nrow=3, ncol=3, byrow=F, dimnames= list(c("yac 1", "yac 2", "yac 3")))
print(matriz)
columna_num <- "yac 2"
media_col = mean(matriz[columna_num])
print(media_col)

#Ejercicio 8 

matriz = matrix(c(1:9), nrow= 3, ncol=3, byrow = F,
                dimnames= list(c("Prehistoria", "Romano", "Islámico"), c("Cerámico", "Lítico", "Mineral")))
print(matriz)
sumafilas = apply(matriz, 1, sum)
print(sumafilas)
#Islámico periodo con más artefactos

#Ejercicio 9

matriz <- matrix(c(1:9), 
                 nrow=3, ncol=3, byrow=F, 
                 dimnames = list(c("yacimiento1", "yacimiento2", "yacimiento3"), 
                                 c(1,2,3)))
print(matriz)
sumafilas <- apply(matriz, 1, sum)
print(sumafilas)
#yacimiento 1 sitio con menos profundidades.

#Ejercicio 10
matriz = matrix(c(1:9), nrow= 3, ncol=3, byrow=F,
                dimnames= list(c("Prehistoria", "Romano", "Islámico"), 
                               c("Cerámico", "Lítico", "Mineral")))
print(matriz)
sumacolumn <- apply(matriz, 2, sum)
print (sumacolumn)
#Mineral

#Ejercicio 11
yacimiento <- sample(c("Yac1", "Yac2", "Yac3"), registros, replace=T)
tipo_artef <- sample(c("Céramico", "Lítico", "Mineral"), registros, replace=T)
fecha_descubr <- sample(1900:2030, registros, replace=T)
print(fecha_descubr)
descripcion <- sample(c("Hueso", "Arma", "Utensilio"), registros, replace=T)
registros_artef <- data.frame(yacimiento= yacimiento,tipodeartef = tipo_artef,
                              fecha = fecha_descubr, descripcion = descripcion)
print(registros_artef)

#Ejercicio 12
Equipo <- sample(c("Equipo1", "Equipo2", "Equipo3"), registros, replace=T)
Yacimiento <- sample(c("Yac1", "Yac2", "Yac3"), registros, replace=T)
fecha_inicio <- sample(1970:2000, registros, replace=T) 
fecha_fin <- sample(2000:2020, registros, replace=T)

excavs_equipo <- data.frame(equipo=Equipo, yacimiento=Yacimiento, fechainic=fecha_inicio,
                            fechafin=fecha_fin)
print(excavs_equipo)

#Ejercicio 13
Yacimiento <- sample(c("Yac1", "Yac2", "Yac3"), registros, replace=T)
edad <- sample(18:40, registros, replace=T)
sexo<- sample(c("Hombre", "Mujer"), registros, replace=T)
descripcion <- sample(c("Cuerpo Entero", "Cráneo", "Brazos", "Piernas"), registros, replace=T)
datos_esqueletos <- data.frame(Yacimiento = Yacimiento, Edad=edad, Sexo=sexo,
                               descripcion=descripcion)
print(datos_esqueletos)

#Ejercicio 14
Yacimiento <- sample(c("Yac1", "Yac2", "Yac3"), registros, replace=T)
altitud <- sample(1:2000, registros, replace=T)
longitud <- sample(1:180, registros, replace=T)
latitud <- sample(1:90, registros, replace=T)
ubicaciones_geog <- data.frame(Yacimiento=Yacimiento, altitud<-altitud,
                               Longitud=longitud, Latitud=latitud)
print(ubicaciones_geog)
