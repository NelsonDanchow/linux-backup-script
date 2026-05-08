# Linux Backup Script

Script en Bash para realizar backups automáticos comprimidos de carpetas importantes en Linux.

## Características
- Comprime las carpetas seleccionadas (Documentos, Descargas, Escritorio)
- Nombre del archivo con fecha y hora
- Limpieza automática de backups antiguos (mantiene solo los últimos 7)
- Mensajes claros con emojis

## Cómo usarlo

```bash
# Dar permisos
chmod +x backup.sh

# Ejecutar
./backup.sh
