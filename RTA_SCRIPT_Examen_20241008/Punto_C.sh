#!/bin/bash
# Desmontar particiones del disco /dev/sdc, excepto /dev/sdc4

for i in {1..11}; do
  if [ "$i" -ne 4 ]; then
    # Definir la ruta de montaje según el índice
    if [ "$i" -le 3 ]; then
      MOUNT_POINT="/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Barahona/EXAMENES-UTN/alumno_1/parcial_$i"
    elif [ "$i" -le 7 ]; then
      MOUNT_POINT="/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Barahona/EXAMENES-UTN/alumno_2/parcial_$((i-4))"
    elif [ "$i" -le 10 ]; then
      MOUNT_POINT="/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Barahona/EXAMENES-UTN/alumno_3/parcial_$((i-7))"
    elif [ "$i" -eq 11 ]; then
      MOUNT_POINT="/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Barahona/EXAMENES-UTN/profesores"
    fi
    
    # Verificar si la partición está montada
    if mount | grep -q "$MOUNT_POINT"; then
      echo "Desmontando $MOUNT_POINT..."
      sudo umount "$MOUNT_POINT"

      if [ $? -eq 0 ]; then
        echo "$MOUNT_POINT desmontado correctamente."
      else
        echo "Error al desmontar $MOUNT_POINT."
      fi
    else
      echo "$MOUNT_POINT no está montado."
    fi
  else
    echo "Saltando /dev/sdc4 (extendida)."
  fi
done

