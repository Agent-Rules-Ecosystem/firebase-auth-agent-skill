# 🗺️ Mapa de Rutas de Autenticación Multi-plataforma

- `lib/data/repositories/auth_repository.dart`: Repositorio de Firebase Auth.
- `lib/logic/blocs/auth/`: BLoC de autenticación y gestión de estado global de usuario.
- `firestore.rules`: Reglas de seguridad de Firestore basadas en `request.auth`.
- `lib/core/router/auth_guard.dart`: Middleware de guardia de rutas para GoRouter / AutoRoute.
