#!/bin/bash

# Directorio donde se guardará el archivo
DIRECTORIO="RTA_ARCHIVOS_Examen_20241008"  # Cambia la fecha según sea necesario
OUTPUT_FILE="$DIRECTORIO/Filtro_Avanzado.txt"

# Crear el directorio si no existe
mkdir -p "$DIRECTORIO"

# Obtener IP pública
IP_PUBLICA=$(curl -s ifconfig.me)

# Obtener URL del repositorio remoto
REPO_URL=$(git remote get-url origin)

# Escribir la información en el archivo
{
	    echo "IP Pública: $IP_PUBLICA"
	        echo "URL del Repositorio Remoto: $REPO_URL"
	} > "$OUTPUT_FILE"
	
echo "La información se ha guardado en $OUTPUT_FILE"
#!/bin/bash

# Directorio donde se guardará el archivo
DIRECTORIO="RTA_ARCHIVOS_Examen_20241008"  # Cambia la fecha según sea necesario
OUTPUT_FILE="$DIRECTORIO/Filtro_Avanzado.txt"

# Crear el directorio si no existe
mkdir -p "$DIRECTORIO"

# Obtener IP pública
IP_PUBLICA=$(curl -s ifconfig.me)

# Obtener URL del repositorio remoto
REPO_URL=$(git remote get-url origin)

# Escribir la información en el archivo
{
    echo "IP Pública: $IP_PUBLICA"
    echo "URL del Repositorio Remoto: $REPO_URL"
} > "$OUTPUT_FILE"

echo "La información se ha guardado en $OUTPUT_FILE"

