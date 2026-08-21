---
name: flutter-firebase-auth-agent-skill
description: Flutter Firebase Auth, Social Login, Session Management, and Security Rules Skill for AI Agents.
---

# 🔐 Flutter Firebase Auth Skill Directive

## Bootstrap de la Habilidad

Al detectar `$auth` o tareas relacionadas con Firebase Auth, OAuth, Google Sign-In, Apple Sign-In, Custom Claims, `flutter_secure_storage` o guardias de navegación:

1. `.skill/flutter-firebase-auth-agent-skill/SKILL.md` ← **Directiva principal**
2. `.skill/flutter-firebase-auth-agent-skill/core/commands.md`
3. `.skill/flutter-firebase-auth-agent-skill/core/brain.md`
4. `.skill/flutter-firebase-auth-agent-skill/core/path_map.md`

## Reglas Canónicas de Firebase Auth en Flutter

- **Manejo Exclusivo por Repositorio**: `FirebaseAuth.instance` NUNCA se invoca directamente en Widgets UI. Toda interacción pasa por `AuthRepository`.
- **Stream de Sesión Reactiva**: Suscribirse a `userChanges()` o `idTokenChanges()` para detectar revocación de sesión o expiración en tiempo real.
- **Traducción de Errores Firebase**: Convertir códigos de error (`user-not-found`, `wrong-password`, `invalid-credential`) a mensajes localizados para la UI.
- **Limpieza Completa en Logout**: Al cerrar sesión, limpiar la caché local de Firestore, tokens en `FlutterSecureStorage` y reiniciar el estado de BLoC.
