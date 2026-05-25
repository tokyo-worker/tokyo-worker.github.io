---
title: "Mermaid Test"
date: 2026-05-24
layout: single
toc: true
---

# RBCモデルのフロー

```mermaid
graph TD

A[家計]
--> B[労働供給]

B --> C[企業]

C --> D[生産]

D --> E[所得]

E --> A

G[政府]
--> T[租税]

T --> A

G --> Bond[国債]

Bond --> A
```
