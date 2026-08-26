---
name: firebase-auth-agent-skill
description: Firebase Auth, Multi-Provider OAuth, Custom Claims, y Security Rules Skill para Agentes IA.
---

# 🔥 Firebase Auth Skill Directive

## Bootstrap de la Habilidad

Al detectar `$firebaseauth` o tareas relacionadas con Firebase Auth, OAuth, JWT Verification, Custom Claims o Security Rules:

1. `.skill/firebase-auth-agent-skill/SKILL.md` ← **Directiva principal**
2. `.skill/firebase-auth-agent-skill/core/commands.md`
3. `.skill/firebase-auth-agent-skill/core/brain.md`
4. `.skill/firebase-auth-agent-skill/core/path_map.md`

## Reglas Canónicas de Firebase Auth

- **Manejo Seguro de idToken:** Nunca exponer el `idToken` en logs ni almacenamiento insecure (LocalStorage/SharedPreferences sin cifrar).
- **Verificación en Backend:** Todo backend Node/Python que reciba un idToken debe verificar la firma usando Firebase Admin SDK.
- **Principio de Mínimo Privilegio:** Aplicar Firestore Security Rules validando `request.auth.uid` y Custom Claims.
