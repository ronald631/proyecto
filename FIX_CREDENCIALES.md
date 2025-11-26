# SOLUCIONAR CREDENCIALES QUE NO FUNCIONAN

## Problema
Las credenciales no funcionan porque el hash de la contraseña en la BD es incorrecto.

## Solución: Actualizar usuarios con script SQL

### Paso 1: Abre phpMyAdmin
- Ve a: `http://localhost/phpmyadmin`
- Inicia sesión

### Paso 2: Abre la pestaña "SQL"
1. En phpMyAdmin, haz click en la pestaña **"SQL"** (arriba)
2. Copia y pega este código:

```sql
DELETE FROM users WHERE email IN ('admin@parqueo.com', 'usuario1@parqueo.com', 'usuario2@parqueo.com');

INSERT INTO `users` (`name`, `email`, `password`, `role`, `is_active`, `created_at`, `updated_at`) VALUES
('Administrador', 'admin@parqueo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 1, NOW(), NOW()),
('Usuario Uno', 'usuario1@parqueo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, NOW(), NOW()),
('Usuario Dos', 'usuario2@parqueo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, NOW(), NOW());
```

3. Haz click en **"Continuar"** o **"Ejecutar"** (botón azul abajo)

### Paso 3: Verifica en phpMyAdmin
1. En la columna izquierda, haz click en **"parqueo_db"**
2. Haz click en tabla **"users"**
3. Deberías ver 3 usuarios con los emails correctos

### Paso 4: Intenta login
- Abre: `http://localhost:8000/login`
- Email: `admin@parqueo.com`
- Contraseña: `admin123`

---

## ✅ Credenciales correctas ahora:

| Email | Contraseña |
|-------|-----------|
| admin@parqueo.com | admin123 |
| usuario1@parqueo.com | admin123 |
| usuario2@parqueo.com | admin123 |

---

## Si aún no funciona:

**Opción: Importar archivo fix_users.sql desde phpMyAdmin**

1. En phpMyAdmin, pestaña **"Importar"**
2. Selecciona: `c:\wamp64\www\prueba1\fix_users.sql`
3. Click en **"Importar"**
4. Intenta login de nuevo

¡Debería funcionar ahora!
