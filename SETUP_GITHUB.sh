#!/bin/bash

# Script para subir el proyecto Hegel a GitHub y desplegarlo en GitHub Pages
# Repositorio: https://github.com/jmlucas68/hegel

echo "🚀 Configurando proyecto Hegel para GitHub..."

# 1. Inicializar git (si no está inicializado)
if [ ! -d ".git" ]; then
    echo "📝 Inicializando repositorio git..."
    git init
fi

# 2. Configurar el remote origin
echo "🔗 Configurando repositorio remoto..."
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/jmlucas68/hegel.git

# 3. Agregar todos los archivos
echo "📁 Agregando archivos al repositorio..."
git add .

# 4. Hacer commit inicial
echo "💾 Creando commit inicial..."
git commit -m "Página web académica completa sobre Georg Wilhelm Friedrich Hegel

- Biografía detallada con imagen histórica
- Pensamiento filosófico con citas textuales auténticas
- Enlaces verificados a obras en español (Archive.org + Amazon)
- Influencias recibidas y ejercidas completamente mapeadas
- Contexto histórico del Idealismo Alemán
- Diseño responsive optimizado para GitHub Pages
- Documentación completa para uso académico

Listo para despliegue en GitHub Pages"

# 5. Crear/cambiar a rama main
echo "🌿 Configurando rama principal..."
git branch -M main

# 6. Subir al repositorio
echo "☁️ Subiendo al repositorio GitHub..."
echo "⚠️  IMPORTANTE: Necesitarás autenticarte con GitHub"
echo "    Usa tu token personal o credenciales cuando te lo pida"
git push -u origin main

echo ""
echo "✅ ¡Archivos subidos exitosamente!"
echo ""
echo "🔧 SIGUIENTE PASO: Configurar GitHub Pages"
echo "   1. Ve a: https://github.com/jmlucas68/hegel/settings/pages"
echo "   2. En 'Source', selecciona 'Deploy from a branch'"
echo "   3. Selecciona 'main' y '/ (root)'"
echo "   4. Click 'Save'"
echo ""
echo "🌐 Tu página estará disponible en:"
echo "   https://jmlucas68.github.io/hegel"
echo ""
echo "⏱️  GitHub Pages puede tardar 2-5 minutos en desplegar"
