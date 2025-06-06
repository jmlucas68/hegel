# 🚀 Instrucciones para Subir a GitHub y Desplegar

## Repositorio Destino: https://github.com/jmlucas68/hegel

### 📋 MÉTODO 1: Script Automático (Recomendado)

```bash
# 1. Abrir terminal en la carpeta del proyecto
cd hegel-github-project

# 2. Ejecutar el script (copia estos comandos)
bash SETUP_GITHUB.sh
```

### 📋 MÉTODO 2: Comandos Manuales Paso a Paso

```bash
# 1. Navegar a la carpeta del proyecto
cd hegel-github-project

# 2. Inicializar git
git init

# 3. Configurar el repositorio remoto
git remote add origin https://github.com/jmlucas68/hegel.git

# 4. Agregar todos los archivos
git add .

# 5. Hacer commit
git commit -m "Página web académica completa sobre Georg Wilhelm Friedrich Hegel"

# 6. Configurar rama principal
git branch -M main

# 7. Subir al repositorio (te pedirá autenticación)
git push -u origin main
```

## 🔧 Configurar GitHub Pages

### Opción A: Interfaz Web (Fácil)
1. **Ve a**: https://github.com/jmlucas68/hegel/settings/pages
2. **En "Source"**: Selecciona "Deploy from a branch"
3. **Selecciona**: "main" y "/ (root)"
4. **Click**: "Save"

### Opción B: Desde Terminal
```bash
# Usar GitHub CLI (si está instalado)
gh repo view jmlucas68/hegel --web
# Luego ir a Settings → Pages manualmente
```

## 🌐 URLs Finales

- **Repositorio**: https://github.com/jmlucas68/hegel
- **Página Web**: https://jmlucas68.github.io/hegel *(disponible después del despliegue)*

## ⏱️ Tiempos Esperados

- **Subida de archivos**: 30 segundos - 2 minutos
- **Despliegue GitHub Pages**: 2-5 minutos adicionales

## 🔐 Autenticación

GitHub te pedirá autenticación. Opciones:

### Personal Access Token (Recomendado)
1. Ve a: https://github.com/settings/tokens
2. Generate new token (classic)
3. Selecciona scopes: `repo`, `workflow`
4. Usa el token como contraseña

### SSH Key
```bash
# Si tienes SSH configurado
git remote set-url origin git@github.com:jmlucas68/hegel.git
```

## ✅ Verificación de Éxito

### Después de subir archivos:
1. **Ve a**: https://github.com/jmlucas68/hegel
2. **Verifica**: Que veas todos los archivos (index.html, README.md, etc.)

### Después de configurar Pages:
1. **Ve a**: https://github.com/jmlucas68/hegel/settings/pages
2. **Debe mostrar**: "Your site is published at https://jmlucas68.github.io/hegel"

### Página funcionando:
1. **Abre**: https://jmlucas68.github.io/hegel
2. **Verifica**: 
   - ✅ Imagen de Hegel visible
   - ✅ Navegación funciona
   - ✅ Enlaces externos funcionan

## 🆘 Solución de Problemas

### Error de autenticación:
- Usa Personal Access Token en lugar de contraseña
- Verifica que tienes permisos en el repositorio

### Archivos no aparecen:
- Ejecuta: `git status` para ver archivos no agregados
- Ejecuta: `git push origin main` nuevamente

### GitHub Pages no funciona:
- Espera 5-10 minutos
- Verifica configuración en Settings → Pages
- Asegúrate de que `index.html` esté en la raíz

### Página no carga correctamente:
- Puede tardar hasta 10 minutos en propagarse
- Refresca el navegador (Ctrl+F5)
- Verifica la URL: https://jmlucas68.github.io/hegel

## 📞 Comandos de Emergencia

### Si algo sale mal:
```bash
# Limpiar y empezar de nuevo
rm -rf .git
git init
git remote add origin https://github.com/jmlucas68/hegel.git
git add .
git commit -m "Reinicio: Página web académica sobre Hegel"
git branch -M main
git push -u origin main --force
```

### Verificar estado:
```bash
git status              # Ver archivos no agregados
git log --oneline       # Ver commits
git remote -v          # Ver repositorio configurado
```

## 🎯 Resultado Esperado

Al final tendrás:
- ✅ **Repositorio GitHub**: Con todos los archivos del proyecto
- ✅ **Página web funcionando**: En https://jmlucas68.github.io/hegel
- ✅ **Documentación completa**: README, guías de despliegue, etc.
- ✅ **Proyecto mantenible**: Listo para futuras actualizaciones

---

**🎓 ¡Tu página académica sobre Hegel estará en vivo en GitHub Pages!**
