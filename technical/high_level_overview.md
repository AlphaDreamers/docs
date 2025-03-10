# **High-Level Overview**

## **Backend Architecture**

Our **Peer-to-Peer Marketplace** is designed using a **microservices architecture** to ensure scalability, modularity, and efficient handling of various services. Key architectural components include:

- **Microservices Architecture** – Decoupled services for modularity and independent scaling.
- **API Gateway** – Centralized request management and routing.
- **REST API or gRPC** – Efficient inter-service communication.
- **Blockchain Integration** – Secure, transparent, and immutable transaction storage.

---

## **Why Microservices Architecture?**

A monolithic architecture would become increasingly difficult to scale and debug as our platform grows. Given the complexity of the system, which includes:

- **Transaction processing**
- **User authentication & account management**
- **Reviews & ratings**
- **User notifications**
- **Blockchain interaction for transparency**

We chose a **microservices approach** to enable:

- **Modularity** – Each service operates independently, ensuring better maintainability.
- **Scalability** – Individual services can scale based on demand without affecting others.
- **Fault Isolation** – Failures in one service do not disrupt the entire system.
- **Flexibility** – Services can use different technologies suited to their specific requirements.

---

## **Challenges in Microservices**

One of the primary challenges in microservices architecture is **data management**, as different services require different data storage solutions.

- **Data Diversity**: Structured vs. unstructured data requirements across services.
- **Database Selection**:
    - **Chat Services**: Messages may contain text, file paths, and images, making **MongoDB (NoSQL)** a suitable choice for its flexibility.
    - **User Accounts & Transactions**: These require strong consistency and relational integrity, best handled by **PostgreSQL or MySQL**.

By leveraging the right database technologies for each service, we ensure both **performance efficiency and data integrity**.

---

## **Blockchain Integration: Reinventing Transparency, Not Cryptocurrency**

Our blockchain implementation is not focused on creating a cryptocurrency but rather on **ensuring transparency and decentralization** of platform records.

### **Implementation Plan**
1. **Blockchain for Record-Keeping**
    - Every **user action** (e.g., transactions, reviews) is signed cryptographically and stored on the blockchain.
    - This ensures **tamper-proof** records, eliminating fake reviews and bot-generated content.

2. **User Account on Blockchain**
    - Upon signing up, users receive both:
        - A **platform account** (for platform operations).
        - A **blockchain account** (containing their **public** and **private keys**).
    - Actions on the platform are **digitally signed** using the user's private key, ensuring authenticity.

3. **Data Integrity & Storage**
    - Each transaction is **hashed using SHA-256** and **broadcasted across blockchain nodes**.
    - Every node maintains a ledger of transactions in the format:
      ```json
      {
        "PublicKey": ["Transaction One", "Transaction Two"]
      }
      ```
    - **LevelDB** is used as the underlying storage mechanism for blockchain data.

4. **Testing & Deployment Considerations**
    - In real-world scenarios, blockchain nodes must be hosted on separate machines and communicate via **HTTP or gRPC**.
    - For testing purposes, we plan to **host multiple blockchain nodes on different ports using Docker**, simulating a distributed network.

This Chain Idea is presented by **Swan Htet Aung Phyo** who wrote this as the prototype in go . We have not agreed it yet .

We can make this kind of idea by delopying the Smart contract on the chain . However, we have no one know how to write solidity and rust