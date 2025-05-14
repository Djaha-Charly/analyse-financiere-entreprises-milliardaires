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

**Nom** : `ratios_inpi_bce.csv`  
**Taille** : +700 Mo  
**Source** : [data.economie.gouv.fr - Ratios Financiers des Entreprises](https://data.economie.gouv.fr/explore/dataset/ratios_inpi_bce)  
**Version utilisée** : 28/04/2025

⚠️ **Attention :**  
GitHub ne permettant pas l’upload de fichiers supérieurs à 25 Mo, le fichier CSV n'est pas inclus dans ce dépôt.  
➡️ Pour récupérer la dernière version à jour de cette base, utilisez le script SQL disponible dans ce projet pour automatiser le téléchargement depuis la source officielle.

---

## 📌 Méthodologie

### 📊 Nettoyage et Préparation des Données  

**1️⃣ Détection des valeurs aberrantes**  
- Analyse des distributions du **chiffre d’affaires** et du **résultat net**  
- Identification et traitement :
  - Chiffres d’affaires négatifs
  - Résultats nets supérieurs à +3000% ou inférieurs à –100% du chiffre d’affaires

**2️⃣ Règles métiers appliquées** et **Élimination des doublons**  
- Conservation uniquement des entreprises dont le **chiffre d’affaires ≥ 1 milliard d’euros**  
- Résultat net borné entre **–100% et +200% du chiffre d’affaires**  
- Calcul d’un indicateur financier complémentaire : **Marge nette (%)** = (Résultat Net / Chiffre d’affaires) × 100  
- Substitution manuelle de certaines valeurs aberrantes détectées via le site officiel [infogreffe.fr](https://www.infogreffe.fr/entreprise/) pour garantir la fiabilité des indicateurs. Le fichier ratios.corriges.csv contient quelques valeurs d'entreprises(3) qui présentaient des valeurs aberrantes visibles.
- Élimination des doublons par entreprise et par année en priorisant le type de bilan :
- Priorité : `K` > `C` > `S` > autres: si plusieurs bilans pour une entreprise sur une même année, le bilan `K` est généralement le plus représentatif.

**3️⃣ Création des clusters**  
- Classement des entreprises en **quartiles (NTILE 4)** selon le chiffre d’affaires  

---

## 📌 Travail Réalisé  

| 📂 Fichier                          | 📑 Description                                                               |
|:----------------------------------|:----------------------------------------------------------------------------|
| `projet_finance_milliardaires_notebook.sql` | Notebook SQL contenant toutes les étapes de nettoyage, préparation, création de vues et clustering |
| `Analyse_Entreprises_Milliardaires.pbix`    | Rapport Power BI interactif avec dashboards et analyses visuelles            |
| `projet_finance_milliardaires_explications.rd` | Document explicatif détaillant la méthodologie et les choix techniques        |
| `readme.md`                | Ce document                        |
- **(Pas de fichier CSV en raison de la taille)**
  
## 📥 Téléchargement de la donnée

Utilisez ce script pour télécharger la dernière version de la base INPI-BCE depuis le site officiel :

```sql
-- Télécharger la base depuis le site data.economie.gouv.fr
-- (commande wget ou curl à adapter en fonction du format)

-- Exemple (terminal) :
wget -O ratios_inpi_bce.csv "https://data.economie.gouv.fr/api/explore/v2.1/catalog/datasets/ratios_inpi_bce/exports/csv?limit=-1"

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

