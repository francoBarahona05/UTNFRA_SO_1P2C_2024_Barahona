#!/bin/bash

# Archivo donde se guardará la información
OUTPUT_FILE="Filtro_Basico.txt"

# Obtener el total de memoria RAM
echo "Total de Memoria RAM:" > "$OUTPUT_FILE"
grep MemTotal /proc/meminfo >> "$OUTPUT_FILE"

# Obtener información del fabricante del chasis
echo -e "\nFabricante del Chasis:" >> "$OUTPUT_FILE"
sudo dmidecode -t chassis | grep Manufacturer >> "$OUTPUT_FILE"

echo "La información se ha guardado en $OUTPUT_FILE"

