#!/bin/bash
LISTA=$1
USER_HASH=$2
HASH=$(sudo grep -i $USER_HASH /etc/shadow | awk -F ':' '{print $2}')
echo "clave:"
echo "$HASH"

# Recorre cada línea del archivo LISTA, ignorando comentarios
while IFS= read -r LINEA; do
    # Ignorar líneas vacías o comentarios
    [[ $LINEA =~ ^#.*$ ]] && continue

    echo "linea: $LINEA"
    echo

    USUARIO=$(echo "$LINEA" | awk -F ',' '{print $1}')
    GRUPO=$(echo "$LINEA" | awk -F ',' '{print $2}')

    # Verificar si el grupo ya existe
    if [ $(grep -c "^$GRUPO:" /etc/group) -eq 0 ]; then
        echo "Creando grupo: $GRUPO"
        sudo groupadd "$GRUPO"  # Corrección aquí
    else
        echo "El grupo $GRUPO ya existe."
    fi

    # Verificar si el usuario ya existe
    if [ $(grep -c "^$USUARIO:" /etc/passwd) -eq 0 ]; then
        echo "Creando usuario: $USUARIO"
        sudo useradd -m -p "$HASH" -s /bin/bash -G "$GRUPO" "$USUARIO"
else
        echo "El grupo $GRUPO ya existe."
    fi

    # Verificar si el usuario ya existe
    if [ $(grep -c "^$USUARIO:" /etc/passwd) -eq 0 ]; then
        echo "Creando usuario: $USUARIO"
        sudo useradd -m -p "$HASH" -s /bin/bash -G "$GRUPO" "$USUARIO"
    else
        echo "El usuario $USUARIO ya existe."
    fi

    echo "-------------------------------"
done < "$LISTA"

 

