# 📊 Analyse Financière des Entreprises Milliardaires en France

> **Note :** Ce projet s’appuie sur une base de données initiale publique comprenant toutes les entreprises françaises, mais l’analyse a volontairement été restreinte aux entreprises dont le chiffre d’affaires dépasse **1 milliard d’euros**. Cette approche permet de concentrer les analyses sur les grandes entreprises structurantes de l’économie.

---

## 📌 Contexte et Objectifs

Ce projet a pour objectif de **réaliser une analyse financière des entreprises milliardaires en France** en exploitant des indicateurs clés tels que le chiffre d’affaires, le résultat net et la rentabilité.

L’étude permet notamment de :
- Suivre l’évolution du chiffre d’affaires et du résultat net moyens sur plusieurs années.
- Calculer les taux de variation annuelle.
- Segmenter les entreprises selon leurs performances financières.
- Visualiser les indicateurs à travers des dashboards Power BI.

---

## 📂 Source de Données

- 📑 **Fichier :** `ratios_inpi_bce.csv`
- 🔗 **Lien officiel :** [https://data.economie.gouv.fr/explore/dataset/ratios_inpi_bce](https://data.economie.gouv.fr/explore/dataset/ratios_inpi_bce)

Ce jeu de données contient les ratios financiers d’entreprises françaises extraits de leurs bilans et comptes de résultat.

---

## 🛠️ Traitements et Choix Méthodologiques

### 📌 Filtrage et Périmètre
- **Critère retenu :** entreprises dont le chiffre d’affaires annuel dépasse **1 milliard d’euros**.
- Création d’une vue matérialisée `entreprises_milliardaires` dans la base SQL.

### 📌 Nettoyage et Correction des Données
- **Détection et correction manuelle de valeurs aberrantes** sur certaines valeurs de chiffre d’affaires et résultat net via le site officiel [infogreffe.fr](https://www.infogreffe.fr/entreprise/).
- Conversion de certaines valeurs manquantes en `NULL`.
- Suppression des lignes dont les variables clés (chiffre d’affaires ou résultat net) étaient manquantes.

### 📌 Calculs et Variables Créées
- **Ajout de la marge nette** calculée comme :  
  `Marge nette = (Résultat net / Chiffre d’affaires) × 100`
- Segmentation des entreprises par quartiles de chiffre d’affaires.
- Calcul des taux de variation annuelle de :
  - Chiffre d’affaires
  - Résultat net

⚠️ Le taux de variation de la première année (2012) est laissé vide ou à zéro selon la configuration.
📄 Documentation SQL : Notebook explicatif détaillé ici: notebook_sql_documentation.pdf


---

## 📊 Indicateurs et Visualisations

Les visualisations ont été réalisées sur Power BI en exploitant exclusivement les entreprises milliardaires.

- **Évolution du chiffre d’affaires moyen et du résultat net moyen**
- **Taux de variation annuel (%)** des indicateurs financiers.
- **Distribution des entreprises par quartiles de chiffre d’affaires**
- **Analyse de la marge nette moyenne par type de bilan et année**

---

## 📦 Outils Utilisés

- **SQL (PostgreSQL)** pour le traitement des données et la création de vues matérialisées.
- **Power BI** pour les visualisations et dashboards interactifs.
- **Python (optionnel)** pour certaines vérifications préliminaires.

---

## 📈 Limites et Perspectives

- L’analyse actuelle porte uniquement sur les entreprises milliardaires.  
  👉 Elle pourrait être étendue à d’autres segments (PME, ETI) en important une base de données similaire et en adaptant les vues.
- Les valeurs corrigées manuellement pourraient à terme être historisées dans un fichier de log pour conserver une traçabilité.
- Intégration future d’autres indicateurs financiers (EBITDA, CAF, ratios de structure…)

---

## 📌 Auteur

DJAHA YANKEP Charly William  
📧 charlywilo@gmail.com
