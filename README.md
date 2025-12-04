# Proyecto de Realidad Aumentada con AR.js

Este proyecto utiliza AR.js para crear una experiencia de realidad aumentada que reproduce un video de YouTube cuando la cámara detecta el logo.

## 🎯 Características

- ✅ Detección de imagen personalizada (logo.png)
- ✅ Reproducción de video de YouTube en AR
- ✅ Interfaz moderna y animada
- ✅ Indicadores de estado en tiempo real
- ✅ Compatible con dispositivos móviles
- ✅ Efectos 3D sobre el marcador

## 📋 Requisitos Previos

- Un servidor web local (puede ser Python, Node.js, o cualquier otro)
- Un smartphone con cámara
- El archivo `logo.png` en la carpeta `img/`

## 🚀 Instalación y Configuración

### Paso 1: Generar el Marcador AR

Para que AR.js pueda reconocer tu logo, necesitas generar un archivo de patrón `.patt`:

1. Ve a: https://ar-js-org.github.io/AR.js/three.js/examples/marker-training/examples/generator.html

2. Sube tu archivo `img/logo.png`

3. Descarga el archivo `.patt` generado

4. Crea una carpeta llamada `markers` en la raíz del proyecto

5. Guarda el archivo descargado como `pattern-logo.patt` dentro de la carpeta `markers/`

**Estructura de carpetas:**
```
augmented-reality/
├── img/
│   └── logo.png
├── markers/
│   └── pattern-logo.patt
├── index-youtube.html
└── README.md
```

### Paso 2: Iniciar un Servidor Local

AR.js requiere que la aplicación se ejecute desde un servidor web (no funcionará abriendo el archivo HTML directamente).

**Opción 1: Python**
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

**Opción 2: Node.js (http-server)**
```bash
npx http-server -p 8000
```

**Opción 3: PHP**
```bash
php -S localhost:8000
```

### Paso 3: Acceder a la Aplicación

1. Abre tu navegador y ve a: `http://localhost:8000/index-youtube.html`

2. Permite el acceso a la cámara cuando se solicite

3. Apunta la cámara al logo impreso o en otra pantalla

4. ¡El video de YouTube debería aparecer automáticamente!

## 📱 Uso en Smartphone

Para usar la aplicación en tu smartphone:

1. Asegúrate de que tu computadora y smartphone estén en la misma red WiFi

2. Encuentra la IP local de tu computadora:
   - Windows: `ipconfig` (busca "IPv4 Address")
   - Mac/Linux: `ifconfig` o `ip addr`

3. En tu smartphone, abre el navegador y ve a: `http://TU_IP:8000/index-youtube.html`
   - Ejemplo: `http://192.168.1.100:8000/index-youtube.html`

4. Permite el acceso a la cámara

5. Apunta al logo y disfruta de la experiencia AR

## 🎨 Personalización

### Cambiar el Video de YouTube

Edita el archivo `index-youtube.html` y busca esta línea:

```javascript
const YOUTUBE_VIDEO_ID = 'zN9EJjVwpx8';
```

Reemplaza `'zN9EJjVwpx8'` con el ID de tu video preferido.

### Ajustar el Tamaño del Plano 3D

En el archivo HTML, busca:

```html
<a-plane
    position="0 0 0"
    rotation="-90 0 0"
    width="2"
    height="2"
```

Modifica los valores de `width` y `height` según tus preferencias.

### Cambiar Colores

Busca las secciones de estilo CSS en el `<style>` del HTML y modifica los colores:

```css
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
```

## 🔧 Solución de Problemas

### El marcador no se detecta

1. **Asegúrate de que el logo tenga buen contraste**: Imágenes con mucho detalle y buen contraste funcionan mejor
2. **Iluminación adecuada**: Evita reflejos y sombras sobre el marcador
3. **Distancia correcta**: Mantén el logo a 20-50 cm de la cámara
4. **Logo impreso**: Para mejores resultados, imprime el logo en papel

### El video no se reproduce

1. **Verifica la conexión a internet**: YouTube requiere conexión activa
2. **Revisa el ID del video**: Asegúrate de que el video existe y es público
3. **Permisos del navegador**: Algunos navegadores bloquean autoplay de videos

### La cámara no se activa

1. **HTTPS requerido**: En producción, necesitas HTTPS. En desarrollo local, `localhost` funciona
2. **Permisos denegados**: Revisa los permisos de cámara en la configuración del navegador
3. **Cámara en uso**: Cierra otras aplicaciones que puedan estar usando la cámara

## 📚 Recursos Adicionales

- [Documentación de AR.js](https://ar-js-org.github.io/AR.js-Docs/)
- [A-Frame Documentation](https://aframe.io/docs/)
- [Generador de Marcadores AR.js](https://ar-js-org.github.io/AR.js/three.js/examples/marker-training/examples/generator.html)

## 🎯 Mejoras Futuras

- [ ] Soporte para múltiples marcadores
- [ ] Galería de videos seleccionables
- [ ] Modelos 3D en lugar de planos
- [ ] Efectos de partículas más elaborados
- [ ] Modo offline con videos locales

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún error o tienes sugerencias, no dudes en abrir un issue o pull request.

---

**Nota**: Este proyecto utiliza AR.js, una librería de código abierto para realidad aumentada en la web. Para más información, visita: https://github.com/AR-js-org/AR.js

https://augmented-reality-e6tt.onrender.com/index-youtube.html