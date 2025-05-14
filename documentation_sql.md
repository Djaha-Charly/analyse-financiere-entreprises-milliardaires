# 📖 Documentation SQL : Projet Analyse Financière

## 📌 Objectifs

- Nettoyer les données
- Calculer les marges financières
- Supprimer les doublons d’entreprises par année et prioriser les bilans selon le type
- Regrouper les entreprises en 4 clusters en fonction de leur chiffre d'affaires

---

## 📊 Étapes SQL détaillées

### 1️⃣ `base_filtrée`
Filtre les entreprises avec :
- CA ≥ 1 milliard €
- Résultat net dans une fourchette raisonnable (-100% à +200% du CA)
- Période : 2012-2023

Ajoute le calcul de :
- Marge nette : résultat_net / chiffre_d_affaires × 100

---

### 2️⃣ `rangés`
Attribution d’un rang numérique aux types de bilans :
- `K` → 1  
- `C` → 2  
- `S` → 3  
- Autres → NULL  

---

### 3️⃣ `dedoublonnés`
Conserve un seul bilan par entreprise et par année :
- Priorise le rang le plus bas (K en priorité)
- En cas de doublon, le bilan le plus haut placé est sélectionné

---

### 4️⃣ `clusterisé`
Classe les entreprises en 4 groupes égaux selon le chiffre d'affaires annuel (`ntile(4)`)

---

## 📄 Remarques :
- Projet réalisé avec la version du fichier : **28/04/2025**
- La base officielle est régulièrement mise à jour. Il est conseillé de récupérer la dernière version via le script fourni dans le README.
