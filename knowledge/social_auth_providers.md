# 🌐 Social OAuth Providers (Google & Apple)

## Google Sign-In Setup
1. Agregar `google_sign_in` a `pubspec.yaml`.
2. Descargar `google-services.json` (Android) y `GoogleService-Info.plist` (iOS).
3. Obtener credencial usando `GoogleSignIn.instance.initialize() + authenticate() (google_sign_in v7+ / equivalente SDK web/nativo)` e intercambiar por `GoogleAuthProvider.credential()`.

## Apple Sign-In Checklist (iOS)
- En proyectos iOS que implementen Google Auth u otro OAuth de terceros, verificar la presencia de **Sign in with Apple** (requisito obligatorio de App Store Review Guidelines) y alertar si falta.
