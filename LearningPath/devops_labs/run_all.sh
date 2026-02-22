#!/bin/bash

# 1. Definim calea de bază (mergem un nivel mai sus față de devops_labs)
BASE_DIR=".."

# 2. Definim căile către fișiere
JAVA_FILE="$BASE_DIR/java_core/TaskManager.java"
TS_FILE="$BASE_DIR/js_ts_logic/dashboard.ts"

echo "🚀 Pornesc Motorul Java..."
# Verificăm dacă fișierul există înainte de a compila
if [ -f "$JAVA_FILE" ]; then
    # Compilăm în directorul unde se află fișierul .java
    javac "$JAVA_FILE"
    # Rulează folosind classpath (-cp) pentru a găsi clasa compilată
    java -cp "$BASE_DIR/java_core" TaskManager
else
    echo "❌ Eroare: Nu am găsit $JAVA_FILE"
fi

echo -e "\n📊 Generare Dashboard TypeScript..."
if [ -f "$TS_FILE" ]; then
    # Compilăm TS (fișierul .js va apărea lângă cel .ts)
    tsc "$TS_FILE"
    # Extragem calea către fișierul JS generat
    JS_FILE="${TS_FILE%.ts}.js"
    node "$JS_FILE"
else
    echo "❌ Eroare: Nu am găsit $TS_FILE"
fi
