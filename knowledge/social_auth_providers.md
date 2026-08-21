# 🌐 Social OAuth Providers (Google & Apple)

## Google Sign-In Setup
1. Agregar `google_sign_in` a `pubspec.yaml`.
2. Descargar `google-services.json` (Android) y `GoogleService-Info.plist` (iOS).
3. Obtener credencial usando `GoogleSignIn().signIn()` e intercambiar por `GoogleAuthProvider.credential()`.
