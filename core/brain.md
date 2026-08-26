# 🧠 Engine de Decisiones Firebase Auth (Auth Brain)

## Matriz de Selección de Autenticación & Proveedores

1. **Usar Google OAuth / Apple Sign-In si**:
   - Se requiere la menor fricción de registro para usuarios en plataformas móviles o web.

2. **Usar Custom Claims (RBAC) si**:
   - La aplicación requiere roles administrativos (`admin`, `editor`, `user`) validados a nivel de servidor o Security Rules sin hacer queries extra a la base de datos.

3. **Estrategia de Persistencia de Tokens**:
   - **Flutter / Mobile**: Usar `FlutterSecureStorage` (Keychain en iOS, EncryptedSharedPreferences en Android).
   - **Web SSR (Next.js / SvelteKit)**: Usar `httpOnly` cookies cifradas pasadas a Firebase Admin SDK.
   - **Web SPA (Vite / React)**: Usar la persistencia nativa indexDB gestionada por `firebase/auth`.
