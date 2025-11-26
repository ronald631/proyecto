# Sistema de Gestión de Parqueos

Sistema de login y registro de parqueos con control de permisos para administradores.

## 📋 Características

- ✅ Sistema de autenticación (login/registro)
- ✅ Control de acceso basado en roles (Admin/User)
- ✅ Registro de vehículos en parqueos
- ✅ Gestión de entrada y salida de vehículos
- ✅ Dashboard con estadísticas
- ✅ Interfaz responsive con Bootstrap 5
- ✅ Base de datos relacional con Eloquent

## 🚀 Instalación

### 1. Requisitos Previos
- PHP >= 7.4
- Composer
- MySQL/MariaDB
- Laravel 8.x

### 2. Clonar o crear el proyecto
```bash
cd c:\wamp64\www\prueba1
```

### 3. Instalar dependencias
```bash
composer install
```

### 4. Configurar archivo .env
```bash
cp .env.example .env
```

Actualiza estos valores en `.env`:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=parqueo_db
DB_USERNAME=root
DB_PASSWORD=
```

### 5. Generar clave de aplicación
```bash
php artisan key:generate
```

### 6. Ejecutar migraciones
```bash
php artisan migrate
```

### 7. Crear usuario administrador
```bash
php artisan db:seed --class=AdminUserSeeder
```

### 8. Iniciar servidor
```bash
php artisan serve
```

El servidor estará disponible en: `http://localhost:8000`

## 👥 Cuentas de Prueba

Después de ejecutar el seeder, tendrás estas cuentas disponibles:

### Administrador
- **Email:** admin@parqueo.com
- **Contraseña:** admin123
- **Permisos:** Acceso total, visualizar todos los parqueos, eliminar registros

### Usuarios Normales
- **Email:** usuario1@parqueo.com
- **Contraseña:** usuario123

- **Email:** usuario2@parqueo.com
- **Contraseña:** usuario123

## 📁 Estructura de Directorios

```
app/
├── Http/
│   ├── Controllers/
│   │   ├── AuthController.php          # Autenticación
│   │   ├── ParqueoController.php       # Gestión de parqueos
│   │   └── UsuariosController.php
│   ├── Middleware/
│   │   └── IsAdmin.php                 # Middleware para admin
│   └── Kernel.php
├── Models/
│   ├── User.php                        # Modelo de usuario
│   └── Parqueo.php                     # Modelo de parqueo
│
database/
├── migrations/
│   ├── 2014_10_12_000000_create_users_table.php
│   ├── 2025_11_24_000000_update_users_table.php
│   ├── 2025_11_24_000001_create_parqueos_table.php
│   └── ...
└── seeders/
    └── AdminUserSeeder.php             # Seeder para usuarios

resources/
└── views/
    ├── auth/
    │   ├── login.blade.php
    │   └── register.blade.php
    ├── layouts/
    │   └── app.blade.php
    └── parqueos/
        ├── dashboard.blade.php
        ├── create.blade.php
        └── edit.blade.php

routes/
└── web.php                             # Rutas de la aplicación
```

## 🔐 Funcionalidades por Rol

### Administrador
- Ver todos los parqueos registrados
- Editar cualquier parqueo
- Eliminar parqueos
- Ver información de quién registró cada parqueo
- Ver estadísticas generales

### Usuario Normal
- Registrar nuevos vehículos en parqueos
- Ver solo sus propios parqueos
- Editar sus propios parqueos
- Registrar entrada/salida

## 📝 Rutas Principales

| Ruta | Método | Descripción |
|------|--------|-------------|
| `/login` | GET | Formulario de login |
| `/login` | POST | Procesar login |
| `/register` | GET | Formulario de registro |
| `/register` | POST | Procesar registro |
| `/logout` | POST | Cerrar sesión |
| `/dashboard` | GET | Dashboard principal |
| `/parqueos/dashboard` | GET | Dashboard de parqueos |
| `/parqueos/create` | GET | Formulario crear parqueo |
| `/parqueos` | POST | Guardar parqueo |
| `/parqueos/{id}/edit` | GET | Formulario editar parqueo |
| `/parqueos/{id}` | PUT | Actualizar parqueo |
| `/parqueos/{id}/salida` | POST | Registrar salida |
| `/parqueos/{id}` | DELETE | Eliminar parqueo (Admin) |

## 🎨 Estilos y Componentes

- **Bootstrap 5:** Framework CSS responsivo
- **Font Awesome:** Iconos
- **Blade Templates:** Motor de plantillas de Laravel
- **Colores gradient:** Diseño moderno

## 🐛 Troubleshooting

### Error: "SQLSTATE[HY000]: General error"
Ejecuta:
```bash
php artisan migrate:fresh
php artisan db:seed --class=AdminUserSeeder
```

### Error: "Class not found"
Ejecuta:
```bash
composer dump-autoload
```

### Puerto 8000 en uso
Usa otro puerto:
```bash
php artisan serve --port=8001
```

## 📚 Documentación Útil

- [Laravel Documentation](https://laravel.com/docs)
- [Laravel Authentication](https://laravel.com/docs/8.x/authentication)
- [Eloquent ORM](https://laravel.com/docs/8.x/eloquent)
- [Blade Templates](https://laravel.com/docs/8.x/blade)

## 👨‍💻 Autor

Desarrollo del sistema de gestión de parqueos con autenticación y permisos.

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.
