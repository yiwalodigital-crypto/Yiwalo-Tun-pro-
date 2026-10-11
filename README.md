# 🚀 YIWALO TUN PRO

![Android](https://img.shields.io/badge/Android-7.0%2B-brightgreen)
![Licence](https://img.shields.io/badge/Licence-GPL--3.0-blue)
![Technologie](https://img.shields.io/badge/VPN-Xray-blueviolet)
![Langage](https://img.shields.io/badge/Langage-Kotlin-purple)

**YIWALO TUN PRO** est une application VPN Android basée sur
Xray-core. Elle vise à proposer une expérience moderne, élégante
et simple à utiliser sur les smartphones et les appareils Android TV.

L'objectif est de personnaliser l'interface avec l'identité YIWALO,
tout en conservant les fonctionnalités techniques du projet d'origine.

---

## 📱 Présentation

YIWALO TUN PRO est développé à partir du projet open source ProxyBox.

L'application est destinée aux utilisateurs qui souhaitent gérer
leurs configurations VPN et se connecter à des serveurs compatibles
avec le moteur Xray intégré.

### ✨ Objectifs de l'interface

- Design moderne et professionnel.
- Thème bleu nuit et bleu électrique.
- Bouton de connexion avec effet lumineux vert.
- Interface entièrement en français.
- Gestion des profils et des configurations VPN.
- Navigation simple entre les différents écrans.
- Compatibilité avec les appareils Android pris en charge.

> La personnalisation graphique sera intégrée progressivement
> dans les fichiers Android du projet.

## ⚡ Fonctionnalités

### 🌐 Protocoles pris en charge

Selon les fonctionnalités du moteur Xray intégré :

- VLESS
- VMess
- Shadowsocks
- Trojan
- Hysteria2

### 🔐 Transports et sécurité

Les transports compatibles comprennent notamment :

- TCP
- WebSocket
- gRPC
- HTTP/2
- QUIC
- KCP
- HTTPUpgrade
- XHTTP (SplitHTTP)

Les modes de sécurité disponibles dépendent de la configuration :
TLS, Reality ou connexion sans TLS.

### 📥 Importation des configurations

L'application d'origine prend en charge plusieurs méthodes :

- Importation d'un lien VPN.
- Importation d'une configuration JSON.
- Lecture d'un QR code avec la caméra.
- Importation d'un QR code depuis la galerie.
- Gestion des abonnements compatibles.
- Enregistrement local des profils.

### 📊 Gestion des connexions

Selon les fonctions conservées dans la version personnalisée :

- Connexion et déconnexion VPN.
- Test de connectivité des profils.
- Mesure de la latence.
- Affichage de la durée de connexion.
- Gestion des configurations enregistrées.
- Reconnexion automatique après redémarrage, si activée
  et prise en charge par la configuration.

Les informations de débit et d'adresse IP nécessitent
une implémentation adaptée dans l'application.

## 🎨 Identité YIWALO TUN PRO

L'interface recherchée s'inspire d'une application VPN moderne.

### Écran d'accueil

- Logo YIWALO TUN PRO.
- Bouton central de connexion.
- Statut de connexion.
- Adresse IP du VPN.
- Latence de la connexion.
- Durée de connexion.
- Débits envoyés et reçus, si disponibles.

### Navigation

Les sections prévues sont :

1. **Accueil** : état et contrôle de la connexion.
2. **Serveurs** : gestion et sélection des profils.
3. **Menu** : accès aux fonctionnalités complémentaires.
4. **Réglages** : paramètres de l'application.

Ces éléments constituent les objectifs de personnalisation ;
ils ne sont pas nécessairement tous présents dans la version actuelle.

## 📺 Compatibilité

- Android 7.0 ou supérieur (API 24+).
- Smartphones Android compatibles.
- Android TV et appareils compatibles.

La compatibilité finale dépend du système Android,
des bibliothèques utilisées et des fonctions conservées.

## 🛠️ Technologies utilisées

- **Langage :** Kotlin
- **Moteur VPN :** Xray-core
- **Bibliothèque Android :** AndroidLibXrayLite
- **Base de données :** Room
- **Programmation asynchrone :** Kotlin Coroutines et StateFlow
- **Réseau :** OkHttp et NanoHTTPD
- **QR codes :** ZXing
- **Tâches en arrière-plan :** WorkManager
- **Interface Android TV :** AndroidX Leanback
- **Compilation :** Gradle

## 📂 Structure du projet

```text
com.dave_cli.proxybox/
├── core/
│   ├── CoreService.kt
│   ├── XrayManager.kt
│   ├── ConfigBuilder.kt
│   ├── GeoFileManager.kt
│   ├── GeoUpdateWorker.kt
│   ├── ProxyEngine.kt
│   └── BootReceiver.kt
├── data/
│   ├── db/
│   └── repository/
├── import_config/
│   ├── ConfigParser.kt
│   ├── SubscriptionParser.kt
│   └── QrDecoder.kt
├── server/
│   ├── LocalConfigServer.kt
│   └── QrGenerator.kt
├── ui/
│   ├── main/
│   ├── tv/
│   ├── add/
│   └── server/
└── ProxyBoxApp.kt
