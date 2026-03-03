# script est exécuté avec Bash.
#!/bin/bash

# LE texte affiché
echo "🚀 Démarrage de l'environnement Odoo..."

# Lancement des conteneurs
docker compose up -d

# Vérification rapide des conteneurs avec 3 sec de délai
sleep 3

# grep = fonction de recherche 
# -q = option silencieuse, si trouvé --> code succès sinon code erreur
if docker ps | grep -q "odoo_app" && docker ps | grep -q "odoo_db"
then
    echo ""
    echo "✅ Odoo et PostgreSQL sont lancés avec succès !"
    echo "🌐 Accédez à l'application via : http://localhost:8069"
    echo ""
else
    echo ""
    echo "❌ Un problème est survenu lors du démarrage."
    echo "Vérifiez avec : docker compose logs"
    echo ""
fi