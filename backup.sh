#!/bin/bash

# =============================================
# Linux Backup Script - Nelson Danchow
# Backup automático de carpetas importantes
# =============================================

BACKUP_DIR="$HOME/backups"
SOURCE_DIRS=("$HOME/Documentos" "$HOME/Descargas" "$HOME/Escritorio")
DATE=$(date +%Y-%m-%d_%H-%M)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Crear carpeta de backups si no existe
mkdir -p "$BACKUP_DIR"

echo "🚀 Iniciando backup - $(date)"

tar -czf "$BACKUP_FILE" "${SOURCE_DIRS[@]}" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "✅ Backup completado correctamente"
    echo "📁 Archivo: $BACKUP_FILE"
    echo "📏 Tamaño: $(du -sh "$BACKUP_FILE" | cut -f1)"
else
    echo "❌ Error durante el backup"
fi

# Mantener solo los últimos 7 backups
echo "🧹 Limpiando backups antiguos..."
find "$BACKUP_DIR" -name "backup_*.tar.gz" -mtime +7 -delete

echo "====================================="
