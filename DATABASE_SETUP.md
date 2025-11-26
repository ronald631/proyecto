# INSTRUCCIONES PARA CREAR LA BASE DE DATOS

## Método más fácil: Importar archivo SQL (RECOMENDADO)

### Paso 1: Abre phpMyAdmin
- En tu navegador: `http://localhost/phpmyadmin`
- Inicia sesión (usuario: `root`, sin contraseña)

### Paso 2: Importar la base de datos
1. En phpMyAdmin, haz click en la pestaña **"Importar"** (arriba)
2. Haz click en **"Seleccionar archivo"**
3. Busca el archivo: `c:\wamp64\www\prueba1\laravel_database.sql`
4. Haz click en **"Continuar"** o **"Importar"**
5. ¡Listo! La base de datos se creará automáticamente con todas las tablas y usuarios

### Paso 3: Verifica que funcionó
- En phpMyAdmin, en la columna izquierda, deberías ver la BD **"parqueo_db"**
- Haz click en ella y verás las tablas: `users`, `parqueos`, etc.

### Paso 4: Inicia el servidor Laravel
Abre **PowerShell** en `c:\wamp64\www\prueba1` y ejecuta:
```powershell
php artisan serve
```

### Paso 5: Accede a la aplicación
- Abre tu navegador en: `http://localhost:8000/login`

---

## 👥 Credenciales de Prueba

### Administrador
- **Email:** `admin@parqueo.com`
- **Contraseña:** `admin123`
- **Permiso:** Acceso total, ver todos los parqueos

### Usuario Normal 1
- **Email:** `usuario1@parqueo.com`
- **Contraseña:** `admin123`
- **Permiso:** Ver solo sus propios parqueos

### Usuario Normal 2
- **Email:** `usuario2@parqueo.com`
- **Contraseña:** `admin123`
- **Permiso:** Ver solo sus propios parqueos

---

## ⚠️ Si el archivo SQL no se importa

### Opción A: Usar línea de comandos MySQL
```powershell
# Desde PowerShell en la carpeta del proyecto
mysql -u root < laravel_database.sql

# Luego:
php artisan serve
```

### Opción B: Crear manualmente en phpMyAdmin
1. Click en **"Nueva"**
2. Nombre: `parqueo_db`
3. Cotejamiento: `utf8mb4_unicode_ci`
4. Click en **"Crear"**
5. Luego desde PowerShell:
```powershell
php artisan migrate
php artisan db:seed --class=AdminUserSeeder
php artisan serve
```

---

## 🔍 Verificar MySQL está activo

Si tienes WAMP:
1. Haz click en el ícono de WAMP en la bandeja del sistema (abajo a la derecha)
2. Verifica que **MySQL** está en **verde**
3. Si no, haz click en **"Start All Services"**

---

## ✅ Lista de verificación

- [ ] WAMP está activo (icono verde)
- [ ] MySQL está corriendo
- [ ] Base de datos `parqueo_db` fue importada
- [ ] Puedes acceder a phpMyAdmin
- [ ] Ejecutaste `php artisan serve`
- [ ] Puedes acceder a `http://localhost:8000/login`
- [ ] Las credenciales funcionan

¡Si todos los pasos están listos, deberías poder iniciar sesión!
