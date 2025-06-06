# Guía de Despliegue en GitHub Pages

Esta guía te ayudará a desplegar la página web de Hegel en GitHub Pages de manera rápida y sencilla.

## 🚀 Método 1: Despliegue Automático (Recomendado)

### Paso 1: Fork del Repositorio
1. Ve al repositorio en GitHub
2. Haz clic en "Fork" en la esquina superior derecha
3. Selecciona tu cuenta como destino del fork

### Paso 2: Configurar GitHub Pages
1. Ve a tu fork del repositorio
2. Haz clic en "Settings" (Configuración)
3. Desplázate hacia abajo hasta "Pages" en el menú lateral
4. En "Source", selecciona "Deploy from a branch"
5. Selecciona la rama "main" (o "master")
6. Selecciona "/ (root)" como carpeta
7. Haz clic en "Save"

### Paso 3: Acceder a tu Página
1. GitHub te mostrará la URL donde estará disponible tu página
2. Será algo como: `https://tu-usuario.github.io/nombre-del-repositorio`
3. El despliegue puede tomar unos minutos

## 🔧 Método 2: Despliegue Manual

### Paso 1: Clonar el Repositorio
```bash
git clone https://github.com/tu-usuario/hegel-filosofo.git
cd hegel-filosofo
```

### Paso 2: Hacer Modificaciones (Opcional)
```bash
# Editar archivos según necesites
# Por ejemplo, personalizar el README.md
```

### Paso 3: Subir Cambios
```bash
git add .
git commit -m "Configuración inicial para mi despliegue"
git push origin main
```

### Paso 4: Configurar GitHub Pages
Sigue los pasos 2-3 del Método 1.

## 🎯 Personalización

### Cambiar el Título de la Página
Edita el archivo `index.html` y modifica la línea:
```html
<title>Georg Wilhelm Friedrich Hegel - Filósofo del Idealismo Alemán</title>
```

### Añadir Google Analytics (Opcional)
1. Obtén tu ID de Google Analytics
2. Edita `_config.yml` y descomenta la línea:
```yaml
google_analytics: "G-TU-ID-AQUI"
```

### Personalizar Colores
Los colores están definidos en las variables CSS al inicio de `index.html`:
```css
:root {
    --color-primary: #1e3a8a;
    --color-secondary: #1e293b;
    --color-accent: #d97706;
    /* ... más variables */
}
```

## 📱 Verificación del Despliegue

### Lista de Verificación
- [ ] La página carga correctamente
- [ ] La imagen de Hegel se muestra
- [ ] La navegación funciona en desktop
- [ ] La navegación móvil funciona (menú hamburguesa)
- [ ] Todos los enlaces externos funcionan
- [ ] El diseño es responsive

### Herramientas de Verificación
1. **PageSpeed Insights**: https://pagespeed.web.dev/
2. **Validador HTML**: https://validator.w3.org/
3. **Accessibility Checker**: https://wave.webaim.org/

## 🌐 Dominios Personalizados

### Usar un Dominio Propio
1. Compra un dominio (ej: `hegel-filosofia.com`)
2. En la configuración de GitHub Pages, añade tu dominio personalizado
3. Configura los DNS de tu dominio para apuntar a GitHub Pages:
   ```
   Type: CNAME
   Name: www
   Value: tu-usuario.github.io
   ```

### Configurar HTTPS
GitHub Pages automáticamente proporciona HTTPS para dominios personalizados. Solo marca la casilla "Enforce HTTPS" en la configuración.

## 🔧 Solución de Problemas

### La página no carga
1. Verifica que `index.html` esté en la raíz del repositorio
2. Asegúrate de que la rama seleccionada en Settings → Pages sea correcta
3. Espera unos minutos, el despliegue puede tardar

### Las imágenes no se muestran
1. Verifica que la carpeta `images/` esté en la raíz
2. Comprueba que `hegel_portrait.jpg` existe en la carpeta `images/`
3. Asegúrate de que los nombres de archivo coincidan exactamente

### Enlaces externos no funcionan
Los enlaces a Archive.org y Amazon deberían funcionar. Si no:
1. Verifica la conexión a internet
2. Algunos enlaces pueden estar temporalmente no disponibles

### Problemas de rendimiento
1. La página está optimizada para carga rápida
2. Si experimentas lentitud, puede ser debido a la ubicación del servidor de GitHub
3. Considera usar un CDN si necesitas mejor rendimiento global

## 📊 Estadísticas y Analíticas

### GitHub Insights
GitHub proporciona estadísticas básicas:
1. Ve a tu repositorio
2. Haz clic en "Insights"
3. Revisa "Traffic" para ver visitantes

### Google Analytics (Avanzado)
Para estadísticas detalladas:
1. Configura Google Analytics en `_config.yml`
2. Revisa las métricas en tu panel de Google Analytics

## 📝 Mantenimiento

### Actualizaciones Regulares
1. Mantén el repositorio actualizado con mejoras
2. Verifica periódicamente que los enlaces externos funcionen
3. Actualiza el contenido académico según nuevas investigaciones

### Backups
1. GitHub actúa como backup principal
2. Considera hacer backup local de tus modificaciones
3. Documenta cambios importantes en el CHANGELOG (si lo creas)

## 🆘 Soporte

Si tienes problemas:
1. Revisa esta guía completa
2. Consulta la documentación oficial de GitHub Pages
3. Abre un issue en el repositorio para ayuda específica
4. Revisa los logs de despliegue en GitHub Actions (si aplica)

---

¡Felicidades! Ahora tienes tu propia página web académica sobre Hegel desplegada en GitHub Pages.
