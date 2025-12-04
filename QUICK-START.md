# 🚀 Guía Rápida - AR.js con YouTube

## ⚡ Inicio Rápido (3 pasos)

### 1️⃣ Generar el Marcador
```bash
# Abre el navegador en:
http://localhost:8000/setup-marker.html
```
Sigue las instrucciones en pantalla para generar el archivo `pattern-logo.patt`

### 2️⃣ Iniciar el Servidor
```bash
# Opción fácil: doble clic en
start-server.bat

# O manualmente:
python -m http.server 8000
```

### 3️⃣ Probar la App
```bash
# En tu navegador:
http://localhost:8000/index-youtube.html
```

---

## 📱 Usar en Smartphone

1. **Encuentra tu IP local:**
   ```bash
   ipconfig
   # Busca "IPv4 Address", ejemplo: 192.168.1.100
   ```

2. **En tu smartphone, abre:**
   ```
   http://TU_IP:8000/index-youtube.html
   # Ejemplo: http://192.168.1.100:8000/index-youtube.html
   ```

3. **Permite acceso a la cámara**

4. **Apunta al logo** (impreso o en otra pantalla)

---

## 🎬 Cambiar el Video de YouTube

Edita `index-youtube.html`, línea ~183:

```javascript
const YOUTUBE_VIDEO_ID = 'zN9EJjVwpx8';  // ← Cambia esto
```

Para obtener el ID de un video de YouTube:
- URL: `https://www.youtube.com/watch?v=ABC123XYZ`
- ID: `ABC123XYZ`

---

## 🎨 Personalización Rápida

### Cambiar Colores del Plano 3D
```html
<!-- Busca en index-youtube.html: -->
<a-plane
    material="color: #667eea; ..."  <!-- Cambia #667eea -->
```

### Cambiar Tamaño del Plano
```html
<a-plane
    width="2"    <!-- Ancho -->
    height="2"   <!-- Alto -->
```

### Cambiar Texto 3D
```html
<a-text
    value="¡Video Detectado!"  <!-- Cambia el texto -->
```

---

## 🔧 Solución Rápida de Problemas

| Problema | Solución |
|----------|----------|
| ❌ Marcador no detecta | • Mejor iluminación<br>• Imprimir el logo<br>• Mantener 20-50cm de distancia |
| ❌ Cámara no funciona | • Permitir permisos en navegador<br>• Usar HTTPS o localhost |
| ❌ Video no carga | • Verificar conexión a internet<br>• Comprobar que el video sea público |
| ❌ Servidor no inicia | • Instalar Python o Node.js |

---

## 📂 Estructura de Archivos

```
augmented-reality/
├── img/
│   └── logo.png                    ← Tu logo
├── markers/
│   └── pattern-logo.patt          ← Generar este archivo
├── index-youtube.html             ← App principal
├── setup-marker.html              ← Asistente de configuración
├── start-server.bat               ← Iniciar servidor (Windows)
├── README.md                      ← Documentación completa
└── QUICK-START.md                 ← Este archivo
```

---

## 🎯 Checklist de Configuración

- [ ] Logo (`img/logo.png`) existe
- [ ] Carpeta `markers/` creada
- [ ] Archivo `pattern-logo.patt` generado y guardado
- [ ] Servidor local iniciado
- [ ] Permisos de cámara otorgados
- [ ] Logo impreso o visible en otra pantalla

---

## 💡 Tips Pro

1. **Mejor Detección:**
   - Imprime el logo en papel blanco
   - Usa buena iluminación, sin reflejos
   - Mantén el logo plano, sin arrugas

2. **Mejor Rendimiento:**
   - Cierra otras pestañas del navegador
   - Usa Chrome o Firefox (mejor compatibilidad)
   - Evita fondos con muchos patrones

3. **Debugging:**
   - Mira el panel de debug (esquina inferior izquierda)
   - Abre la consola del navegador (F12) para ver errores
   - Verifica que el archivo `.patt` esté en la ubicación correcta

---

## 🌐 URLs Útiles

- **Setup:** http://localhost:8000/setup-marker.html
- **App AR:** http://localhost:8000/index-youtube.html
- **Generador AR.js:** https://ar-js-org.github.io/AR.js/three.js/examples/marker-training/examples/generator.html

---

## 📞 Soporte

Si tienes problemas:
1. Revisa el `README.md` completo
2. Verifica la consola del navegador (F12)
3. Asegúrate de que todos los archivos estén en su lugar

---

**¡Disfruta de tu experiencia de Realidad Aumentada! 🎉**
