# 📂 Projet Portfolio – ERP RH avec Odoo

## Objectif du projet

Dans le cadre de ma reconversion vers un poste de **Support Applicatif / Consultant ERP Junior**,  
ce projet a pour objectif de :

- Installer et configurer un ERP open-source
- Créer une base RH fonctionnelle
- Préparer un environnement pour le développement de modules custom
- Documenter l’ensemble comme un projet professionnel

ERP utilisé : **Odoo 17 Community**

---

# Étapes réalisées jusqu’à présent

## 1️⃣ Préparation de l’environnement

- OS : Linux
- IDE : VS Code
- Docker : version 28.1.1
- Docker Compose : version v2.35.1

### Structure du projet :

```text
Projet_SIRH/
└── My_OdooERP/
    ├── docker-compose.yml
    └── addons/  # pour futurs modules custom
```

2️⃣ Pourquoi Docker ?

Isolation complète de l’environnement (pas d’impact sur Linux)

Reproductibilité : la même configuration peut être relancée sur n’importe quelle machine

Stabilité : choix de versions validées par Odoo (PostgreSQL 15, Odoo 17)

Simule une architecture proche de la production

Permet de développer et tester des modules sans affecter le système hôte

4️⃣ Lancement des conteneurs

Depuis le dossier My_OdooERP :

```
docker compose up -d
docker ps
```

5️⃣ Création de la base de données Odoo

Écran “Create Database”

Master Password : (protège les bases Odoo)

Database Name : odoo_rh

Email : admin@odoo-rh.local (compte admin ERP)

Password : mot de passe admin ERP

Langue interface : Français
