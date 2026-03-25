# Parisina - De La Rosa 6I (App de Telas y Costuras) 🧵

Aplicación móvil desarrollada en **Flutter** para el negocio "Parisina - De La Rosa 6I". El proyecto se enfoca en una interfaz limpia, funcional y personalizada siguiendo la identidad visual de la marca.

## 🎨 Identidad Visual
El diseño se basa en una paleta de colores específica para transmitir elegancia y profesionalismo en el sector textil:
- **AppBar:** Rojo Oscuro (`#8B0000`) con tipografía blanca.
- **Fondo:** Blanco puro para mayor legibilidad.
- **Componentes (Botones/Texto):** Negro con letras blancas.
- **Detalles:** Subtonos grises en campos de entrada y acentos en **Amarillo Tenue**.

## 🚀 Características
- **Pantalla Principal:** Acceso rápido con diseño centrado y botones redondeados.
- **Módulo de Registro:** Captura de usuario, correo y validación de contraseña.
- **Módulo de Inicio de Sesión:** Validación contra almacenamiento local.
- **Persistencia:** Simulación de `LocalStorage` mediante una clase de datos estáticos (sin dependencias externas).
- **Arquitectura:** Código modular separado por archivos para facilitar el mantenimiento.

## 📂 Estructura del Proyecto
```text
lib/
├── main.dart                # Punto de entrada y configuración de tema global
├── models/
│   └── local_data.dart      # Gestión de persistencia temporal de datos
└── screens/
    ├── principal.dart       # Pantalla de bienvenida (Home)
    ├── registro.dart        # Formulario de creación de cuenta
    └── insesion.dart        # Formulario de acceso

## Evidencias

<img width="384" height="626" alt="image" src="https://github.com/user-attachments/assets/b1ff8a5b-d144-4b72-9fab-7906141e336a" />
<img width="374" height="628" alt="image" src="https://github.com/user-attachments/assets/086ef3cc-408b-469d-9cdb-df79674f9522" />
<img width="377" height="628" alt="image" src="https://github.com/user-attachments/assets/44a0ed4b-f43b-4c81-8abd-e0c7cd3c2407" />
