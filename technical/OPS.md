### **Docker Setup for P2P Marketplace**

To ensure seamless deployment and scalability, our application uses **Docker** for containerization. Below is the structured setup for our Docker environment.

---

## **1. Network Configuration**
We will create a dedicated **Docker network** to allow communication between containers.

- **Network Name:** `app_network`
- **Type:** `bridge`
- **Command to create network:**
  ```sh
  docker network create app_network
  ```

---

## **2. Volumes (Persistent Storage)**
Docker **volumes** are used to persist data across container restarts.

- **Volume Name:** `app_data`
- **Usage:** Stores database data to avoid losing information when containers restart.
- **Command to create volume:**
  ```sh
  docker volume create app_data
  ```

---

## **3. Database Images**
We use two databases: **PostgreSQL** for structured data and **MongoDB** for handling flexible data like chat messages.

### **PostgreSQL (SQL Database)**
- **Image Name:** `postgres:16-alpine`
- **Persistent Storage:** `/var/lib/postgresql/data`
- **Docker Command:**
  ```sh
  docker run -d \
    --name postgres_db \
    --network app_network \
    -e POSTGRES_USER=myuser \
    -e POSTGRES_PASSWORD=mypassword \
    -e POSTGRES_DB=mydatabase \
    -v app_data:/var/lib/postgresql/data \
    -p 5432:5432 \
    postgres:16-alpine
  ```

### **MongoDB (NoSQL Database for Chat & Flexible Data)**
- **Image Name:** `mongo:7.0`
- **Persistent Storage:** `/data/db`
- **Docker Command:**
  ```sh
  docker run -d \
    --name mongo_db \
    --network app_network \
    -e MONGO_INITDB_ROOT_USERNAME=myuser \
    -e MONGO_INITDB_ROOT_PASSWORD=mypassword \
    -v app_data:/data/db \
    -p 27017:27017 \
    mongo:7.0
  ```

---

## **4. Frontend Image**
The frontend is built using **Next.js** and will be containerized.

- **Image Name:** `node:20-alpine` (used for building Next.js)
- **Dockerfile (Frontend)**:

  ```dockerfile
  FROM node:20-alpine
  WORKDIR /app
  COPY package.json package-lock.json ./
  RUN npm install
  COPY . .
  RUN npm run build
  CMD ["npm", "start"]
  EXPOSE 3000
  ```

- **Docker Command:**
  ```sh
  docker run -d \
    --name frontend \
    --network app_network \
    -p 3000:3000 \
    my-nextjs-app
  ```

---

## **5. Backend Image**
The backend is developed in **Go (v1.24)**.

- **Image Name:** `golang:1.24-alpine`
- **Dockerfile (Backend)**:

  ```dockerfile
  FROM golang:1.24-alpine
  WORKDIR /app
  COPY go.mod go.sum ./
  RUN go mod download
  COPY . .
  RUN go build -o main .
  CMD ["./main"]
  EXPOSE 8080
  ```

- **Docker Command:**
  ```sh
  docker run -d \
    --name backend \
    --network app_network \
    -p 8080:8080 \
    my-go-app
  ```

---



---

### **Final Summary**

| **Service**    | **Image**            | **Port**  | **Storage**  |
|--------------|--------------------|---------|------------|
| **PostgreSQL**  | `postgres:16-alpine` | `5432`   | `/var/lib/postgresql/data` |
| **MongoDB**     | `mongo:7.0`         | `27017`  | `/data/db` |
| **Frontend (Next.js)** | `node:20-alpine` | `3000` | - |
| **Backend (Go 1.24)** | `golang:1.24-alpine` | `8080` | - |
| **API Gateway ** | `kong:3.4` | `8000, 8001` | - |

---
