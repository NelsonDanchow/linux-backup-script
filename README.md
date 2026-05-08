# Linux Backup Script

Script en Bash para realizar backups automáticos comprimidos de carpetas importantes en Linux.

## Características
- Comprime las carpetas seleccionadas (Documentos, Descargas y Escritorio)
- Nombre del archivo con fecha y hora
- Limpieza automática de backups antiguos (mantiene solo los últimos 7 días)
- Mensajes claros y coloreados

## Cómo usarlo

```bash
# Dar permisos de ejecución
chmod +x backup.sh

# Ejecutar el script
./backup.sh
0 2 * * * /ruta/completa/al/script/backup.sh >> /ruta/logs/backup.log 2>&1
