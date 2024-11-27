
# Inception
A Docker-based project to build and manage a fully containerized environment with isolated services including a database, web server, and WordPress instance.


## 🌟 Overview
The Inception project is a key part of the 1337 curriculum, focusing on Docker and DevOps principles. The goal is to create a scalable, secure, and isolated multi-service application using Docker Compose. This project enhances your understanding of container orchestration, networking, and system architecture.

## 🛠️ Features
- **Nginx Reverse Proxy:** Securely routes HTTP(S) traffic to the appropriate services.
- **MariaDB Database:** Provides persistent and secure data storage.
- **WordPress CMS:** A content management system for creating and managing websites.
- **Redis Cache:** Accelerates data retrieval and reduces database load.
- **FTP Server:** Provides file transfer capabilities for uploading assets.
- **Adminer:** A lightweight database management interface.
- **Netdata Monitoring:** Real-time performance monitoring of your system.
- **SSL/TLS Encryption:** Ensures secure communication using self-signed certificates.
- **Containerization:** All services are isolated within their own Docker containers.
## ⚙️ Installation and Usage

### Prerequisites
- Ensure `git`, `docker`, `docker compose` and `make` are installed on your system.

### Clone the Repository

```bash
  git clone https://github.com/xTyranT/inception.git
```
### Change Directory
```bash
  cd inception
```
### Start the Project
```bash
  make
```
### Access the services:

WordPress: Navigate to https://localhost in your browser.
## 🛠️ Services in Detail

### ![Logo](https://img.icons8.com/?size=48&id=t2x6DtCn5Zzx&format=png) **Nginx**
- Configured as a reverse proxy.
- Handles HTTPS using the generated SSL certificates.
- Routes requests to the WordPress container.

### ![Logo](https://img.icons8.com/?size=48&id=nrY6pkbRkJCi&format=png) **MariaDB**
- Stores all WordPress data securely.
- Initialized with a custom SQL script (`custom.sql`).

### ![Logo](https://img.icons8.com/?size=48&id=13664&format=png) **WordPress**
- A PHP-based CMS connected to the MariaDB database.
- Fully operational with HTTPS via Nginx.

### ![Logo](https://img.icons8.com/?size=48&id=pHS3eRpynIRQ&format=png) **Redis**
- Provides caching to improve the performance of WordPress.
- Configured to reduce the load on the database by storing temporary data.

### ![Logo](https://img.icons8.com/?size=48&id=MrXgxUCDluSg&format=png) **FTP Server**
- Enables secure file uploads to the WordPress application.
- Fully integrated with Docker networking.

### ![Logo](https://img.icons8.com/?size=50&id=1476&format=png) **Adminer**
- A user-friendly interface for managing the MariaDB database.
- Accessible at [http://localhost:8080](http://localhost:8080).

### ![Logo](https://img.icons8.com/?size=50&id=2150&format=png) **Netdata**
- A real-time monitoring tool for tracking container and system performance.
- Provides insights into CPU, memory, and network usage.

## 🔍 Project Highlights
- Implements DevOps best practices.
- Demonstrates Docker Compose for multi-service orchestration.
- Emphasizes security, performance, and scalability.
