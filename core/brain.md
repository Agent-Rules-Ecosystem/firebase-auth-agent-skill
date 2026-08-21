# 🧠 Engine de Autenticación (Auth Brain)

## Matriz de Selección de Autenticación

1. **Flujo de Usuario Nuevo (Registro)**:
   - Crear credencial en Firebase Auth -> Crear documento inicial en Firestore (`/users/{uid}`) -> Emitir `Authenticated` state.

2. **Flujo Anónimo a Usuario Registrado (Account Linking)**:
   - Preservar UID anónimo -> Vincular credencial Google/Email (`linkWithCredential`) -> Evitar pérdida de datos locales.

3. **Expiración o Revocación de Sesión**:
   - `idTokenChanges()` emite `null` -> Disparar inmediatamente redirección a `/login` -> Limpiar caché de la app.
