# 📂 Projet – ERP RH avec Odoo

## Objectif du projet

Dans le cadre de ma reconversion vers un poste de **Support Applicatif / Consultant ERP**,  
ce projet a pour objectif de :

- Installer et configurer un ERP open-source
- Créer une base RH fonctionnelle
- Préparer un environnement pour le développement de modules custom
- Documenter l’ensemble du projet

ERP utilisé : **Odoo 17 Community**

---

# Étapes réalisées jusqu’à présent

## 1️. Préparation de l’environnement

- OS : Linux
- IDE : VS Code
- Docker : version 28.1.1
- Docker Compose : version v2.35.1

## 2. Scripts d’automatisation Docker

Afin de simplifier la gestion de l’environnement Odoo, deux scripts Bash ont été créés pour automatiser le démarrage et l’arrêt du projet.

---

### start.sh — Démarrage de l’environnement

Ce script permet de :

- Lancer les conteneurs Docker (`odoo_app` et `odoo_db`)
- Vérifier que les deux services sont bien actifs
- Afficher un message de confirmation
- Fournir le lien d’accès à l’application

### stop.sh — Arrêt de l’environnement

Ce script permet de :

- Arrêter proprement les conteneurs
- Libérer les ressources système
- Conserver les données (volume PostgreSQL intact)

## Structure du projet :

```text
Projet_SIRH/
└── My_OdooERP/
    ├── docker-compose.yml
    └── addons/  # pour futurs modules custom
```

### Pourquoi Docker ?

- Isolation complète de l’environnement
- Reproductibilité : la même configuration peut être relancée sur n’importe quelle machine
- Stabilité : choix de versions validées par Odoo (PostgreSQL 15, Odoo 17)
- Permet de développer et tester des modules sans affecter le système hôte

## Lancement et arrêt des conteneurs

Depuis le dossier My_OdooERP :

```
./start.sh
```

Arrêt des conteneurs :

```
./stop.sh
```
