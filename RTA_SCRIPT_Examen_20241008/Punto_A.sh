mkdir -p ~/repogit/UTNFRA_SO_1P2C_2024_Barahona/EXAMENES-UTN


for i in {1..3}; do
    # Crear la carpeta para cada alumno
    mkdir -p ~/repogit/UTNFRA_SO_1P2C_2024_Barahona/EXAMENES-UTN/alumno_$i
    # Crear las carpetas de parciales dentro de cada alumno
    for j in {1..3}; do
        mkdir -p ~/repogit/UTNFRA_SO_1P2C_2024_Barahona/EXAMENES-UTN/alumno_$i/parcial_$j
    done
done
mkdir -p ~/repogit/UTNFRA_SO_1P2C_2024_Barahona/EXAMENES-UTN/profesores

