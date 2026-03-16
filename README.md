```markdown
# Training Environment – PrestaShop & WordPress

> ⚠️ This repository is mainly for internal training purposes and may not be generally useful.

## Overview

This repository contains a Docker-based environment designed to support a **PrestaShop training course**.

- One **main PrestaShop instance** is used for **continuous training**.
- The **other nine instances** are intended for **final and mock exams**.

The Docker Compose configuration was mostly generated using AI and has only been lightly reviewed.  
It may therefore be **sensitive or unstable**, and improvements will be made later.

---

## Configuration

Before starting the environment, **replace every occurrence of `DOMAIN`** with the actual domain used to access the server.

You can quickly do this using search and replace:

```

Ctrl + F → DOMAIN

````

Replace it with your real remote access domain.

---

## Database Access

To connect to the shared MariaDB database container:

```bash
docker exec -it multipresta-db-common mariadb -uroot -proot_pass
````

---

## Practical Utilities

The script `practical.sh` contains useful commands for training purposes, such as:

* Printing admin URLs
* Managing instances

Since no real email system is used in this environment, these commands help access the admin panels directly.

---

# PrestaShop Instances

### Ports

PrestaShop instances are exposed on the following port range:

```
8081 → 8090
```

### Default Credentials

| Field    | Value                 |
| -------- | --------------------- |
| Email    | `demo@prestashop.com` |
| Password | `prestashop_demo`     |

---

# WordPress Instances

### Setup

All WordPress sites must be **installed manually**.

### Ports

WordPress instances are exposed on:

```
8091 → 8100
```

### Standard Configuration (Post-Installation)

Replace `(number)` with the site index (e.g., `1`, `2`, `3`, etc.).

| Setting    | Value                       |
| ---------- | --------------------------- |
| Site Title | `site(number)`              |
| Username   | `admin`                     |
| Password   | `mdpsite(number)admin`      |
| Email      | `no-reply@aj-formation.com` |

Example for site 1:

| Setting    | Value                       |
| ---------- | --------------------------- |
| Site Title | `site1`                     |
| Username   | `admin`                     |
| Password   | `mdpsite1admin`             |
| Email      | `no-reply@aj-formation.com` |

---

## Notes

* This environment is designed **specifically for training and exams**.
* Security and stability **have not been fully hardened yet**.
* Future revisions may improve reliability and configuration.

```