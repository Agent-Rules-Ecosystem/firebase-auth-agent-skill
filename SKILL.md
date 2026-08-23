# ⚙️ Flutter Firebase Auth Skill Matrix & Directives

## 🎯 Capacidades de la Habilidad

```mermaid
graph LR
    Sub1[Firebase Auth Stream] --> AuthCore[Flutter Auth Skill]
    Sub2[Google & Apple OAuth] --> AuthCore
    Sub3[Custom Claims & RBAC] --> AuthCore
    Sub4[FlutterSecureStorage Vault] --> AuthCore
    Sub5[GoRouter Auth Guard] --> AuthCore
```

---

## 📋 Protocolo de Auditoría de Autenticación (`$auth:audit`)

1. **Auditoría de Credenciales**:
   - Validar que las claves OAuth (`SHA-1` y `SHA-256` fingerprints) estén registradas en Firebase Console para Android.
   - Validar configuración de `Services-Info.plist` y `GoogleService-Info.plist` para iOS.
2. **Auditoría de Persistencia**:
   - Verificar si los tokens se almacenan en `SharedPreferences` (Inseguro) o `FlutterSecureStorage` (Seguro).
3. **Auditoría de Security Rules**:
   - Auditar que las colecciones de Firestore restrinjan lecturas/escrituras validando `request.auth != null` y `request.auth.uid == userId`.

---

## 🔒 Plantilla Canónica de Firestore Security Rules (RBAC)

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Función auxiliar de autenticación
    function isAuthenticated() {
      return request.auth != null;
    }
    
    // Función auxiliar de propiedad de documento
    function isOwner(userId) {
      return isAuthenticated() && request.auth.uid == userId;
    }

    // Regla de perfil de usuario
    match /users/{userId} {
      allow read: if isAuthenticated();
      allow write: if isOwner(userId);
    }
  }
}
```


---

## 📝 Persistencia y Salida Activa (`overview/work/skill/`)

Al ejecutar esta skill (mediante `$auth` o `$auth:audit`), es **obligatorio crear o actualizar su reporte activo** dentro del proyecto cliente en la ruta:

`overview/work/skill/flutter-firebase-auth.md`

### Estructura Requerida del Reporte:

```markdown
# 📋 Registro Activo de Tareas — Flutter Firebase Auth Agent Skill

> **Generado por**: `flutter-firebase-auth-agent-skill` (`$auth:audit`)  
> **Última actualización**: YYYY-MM-DD  

## 🎯 Tareas Pendientes Accionables

| ID | Tipo | Estado | Resumen | Evidencia/Ruta | Acción Requerida |
|---|---|---|---|---|---|
| AUTH-01 | Fix / Refactor | Pendiente | <Resumen breve> | `<ruta:línea>` | <Remediación recomendada> |

## 📝 Observaciones y Detalles de Revisión
- Detalle técnico, evidencia o contexto extendido proporcionado por la revisión de la skill.
```
