-- Eliminar usuarios existentes
DELETE FROM users WHERE email IN ('admin@parqueo.com', 'usuario1@parqueo.com', 'usuario2@parqueo.com');

-- Insertar usuarios de prueba con contraseña correcta: admin123
-- Hash generado para 'admin123'
INSERT INTO `users` (`name`, `email`, `password`, `role`, `is_active`, `created_at`, `updated_at`) VALUES
('Administrador', 'admin@parqueo.com', '$2y$10$8EQ4tbibPgpBkrz9FyZQlu/EX36XWzCaZLwl628wmxeKyVWFdARxO', 'admin', 1, NOW(), NOW()),
('Usuario Uno', 'usuario1@parqueo.com', '$2y$10$8EQ4tbibPgpBkrz9FyZQlu/EX36XWzCaZLwl628wmxeKyVWFdARxO', 'user', 1, NOW(), NOW()),
('Usuario Dos', 'usuario2@parqueo.com', '$2y$10$8EQ4tbibPgpBkrz9FyZQlu/EX36XWzCaZLwl628wmxeKyVWFdARxO', 'user', 1, NOW(), NOW());
