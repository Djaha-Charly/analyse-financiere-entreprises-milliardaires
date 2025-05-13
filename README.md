# 📊 Analyse Financière des Entreprises Françaises Milliardaires (2012-2023)

## 📌 Contexte et Objectif

Ce projet a pour objectif d’étudier la santé financière des entreprises françaises réalisant plus de **1 milliard d’euros de chiffre d’affaires** entre **2012 et 2023**.  
L’analyse repose sur plusieurs indicateurs financiers clés :  
- Chiffre d’affaires  
- Résultat net  
- Marge nette  
- Classement en quartiles (clusters) selon le chiffre d’affaires  

L’ensemble du projet est réalisé à partir de données publiques issues de l’**INPI** et des bases BCE disponibles via le portail officiel [data.economie.gouv.fr](https://data.economie.gouv.fr/explore/dataset/ratios_inpi_bce).

---

## 📌 Source de données

- **Nom du fichier** : `ratios_inpi_bce.csv`
- **Provenance** : [https://data.economie.gouv.fr/explore/dataset/ratios_inpi_bce](https://data.economie.gouv.fr/explore/dataset/ratios_inpi_bce)
- **Période couverte** : 2012-2023

---

## 📌 Méthodologie

### 📊 Nettoyage et Préparation des Données  

**1️⃣ Détection des valeurs aberrantes**  
- Analyse des distributions du **chiffre d’affaires** et du **résultat net**  
- Identification et traitement :
  - Chiffres d’affaires négatifs
  - Résultats nets supérieurs à +3000% ou inférieurs à –100% du chiffre d’affaires  

**2️⃣ Règles métiers appliquées**  
- Conservation uniquement des entreprises dont le **chiffre d’affaires ≥ 1 milliard d’euros**  
- Résultat net borné entre **–100% et +200% du chiffre d’affaires**  
- Calcul d’un indicateur financier complémentaire : **Marge nette (%)** = (Résultat Net / Chiffre d’affaires) × 100  
- Substitution manuelle de certaines valeurs aberrantes détectées via le site officiel [infogreffe.fr](https://www.infogreffe.fr/entreprise/) pour garantir la fiabilité des indicateurs

**3️⃣ Création des clusters**  
- Classement des entreprises en **quartiles (NTILE 4)** selon le chiffre d’affaires  

---

## 📌 Travail Réalisé  

| 📂 Fichier                          | 📑 Description                                                               |
|:----------------------------------|:----------------------------------------------------------------------------|
| `projet_finance_milliardaires_notebook.sql` | Notebook SQL contenant toutes les étapes de nettoyage, préparation, création de vues et clustering |
| `rapport_financier_milliardaires.pbix`    | Rapport Power BI interactif avec dashboards et analyses visuelles            |
| `docs/projet_finance_milliardaires_explications.pdf` | Document explicatif détaillant la méthodologie et les choix techniques        |
| `data/ratios_inpi_bce.csv`                | Fichier de données initial utilisé pour les analyses                         |

---

## 📌 Résultats

Le rapport Power BI met en évidence :  
✔️ L’évolution du chiffre d’affaires et du résultat net des entreprises milliardaires de 2012 à 2023  
✔️ Les variations annuelles en pourcentage  
✔️ Le classement des entreprises par quartile selon leur chiffre d’affaires  
✔️ Les marges nettes et leur évolution  

---

## 📌 Outils utilisés  

- **PostgreSQL** : Nettoyage, transformations, création de vues matérialisées et clustering  
- **Power BI** : Visualisation et création de dashboards interactifs  
- **Python** *(optionnel pour certains tests statistiques)*

---

## 📌 Conclusion  

Ce projet démontre la capacité à :  
✅ Collecter et structurer des données financières réelles  
✅ Nettoyer et préparer des bases de données volumineuses via SQL  
✅ Appliquer des règles métiers pertinentes  
✅ Réaliser des visualisations financières impactantes sous Power BI  
✅ Structurer un projet analytique complet et documenté  

---

💼 **Ce projet est intégralement réplicable et adaptable à d’autres jeux de données d’entreprises, en conservant la même structure et règles d’analyse.**  

---

## 📥 Contact  

**DJAHA YANKEP Charly William**  
📧 Email : charlywilo@gmail.com  
📞 Téléphone : 0758640867  
📍 Adresse : 231 Avenue Stalingrad, 37700 Saint Pierre des Corps  
🌐 GitHub : [https://github.com/Djaha-Charly](https://github.com/Djaha-Charly)  

---

## 📌 Licence  

Projet sous licence **MIT** — libre d'utilisation et de diffusion à des fins non commerciales.

---

## ✅ Remarque  

Ce projet est un exercice personnel de data analysis réalisé dans le cadre d’une reconversion professionnelle vers le métier de Data Analyst.

