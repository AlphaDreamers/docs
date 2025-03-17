### Team Member

- Swan Htet Aung Phyo
- Aung Zayar Moe
- Michal Piotr Rawski
- Alexander Rosol

### GitHub Organisation Link for the Details Documentation 

[GitHub Organisation Documentation](https://github.com/AlphaDreamers/docs/tree/main)
### **Peer-to-Peer Marketplace**

In today's digital economy, a **Peer-to-Peer (P2P) Marketplace** serves as a dynamic platform where users can seamlessly transition between the roles of buyers and sellers. This application empowers individuals to **offer services** such as freelance jobs and **sell digital assets**, providing a flexible and efficient ecosystem for both professionals and creators.

Whether you're a freelancer looking to offer your expertise or a digital creator seeking to monetize your work, this platform enables direct interactions, secure transactions, and a streamlined experience without the need for intermediaries. With a user-driven approach, the marketplace fosters a **collaborative and thriving digital economy** where opportunities are limitless.

---

### **Flow of the Application**

1. **User Registration & Account Setup**

   - Users sign up on the platform and create an account.
   - Users must complete **Know Your Customer (KYC)** verification to enhance security and trust.
   - Every user has the ability to act as both a **buyer** and a **seller**.
2. **Browsing & Searching**

   - Users can search for **freelance services** and **digital assets** using filters and categories.
   - Sellers can list their services or digital assets with detailed descriptions and pricing.
3. **Buying & Selling**

   - Buyers can browse listings, check reviews, and purchase services or assets.
   - Sellers receive order notifications and can manage transactions through their dashboard.
4. **Payments & Transactions**

   - Payments are processed securely via **Stripe** or other integrated payment gateways.
   - Funds are held in escrow until the transaction is successfully completed to ensure buyer and seller protection.
5. **Order Completion & Delivery**

   - **For freelance services**: Sellers complete and deliver the work to the buyer.
   - **For digital assets**: Buyers get instant access to the purchased assets.
6. **Reviews & Ratings**

   - After order completion, both buyers and sellers can leave **ratings and reviews**.
   - This helps establish credibility, trust, and a reliable marketplace.
7. **P2P Real-Time Chat**

   - Buyers and sellers can communicate directly through a **real-time chat feature**.
   - This enhances collaboration and allows users to discuss project details efficiently.
8. **Check the Authenticity of the review on the Chain**

   - Before making the purchasing and choosing the  service, user can copy the transaction ID of the review and services History on the chain Scanner

---

### **Blockchain Integration for Trust & Transparency**

To ensure authenticity and prevent fraudulent activities, **key marketplace records** will be stored on the **blockchain**, ensuring **immutability and transparency**.

- **Immutable Record Keeping:** Every action, including **reviews, work submissions, and transaction history**, will be **stored across decentralized nodes**.
- **Fraud Prevention:** This prevents **fake reviews and bot-generated postings**, ensuring a **genuine user-driven experience**.
- **Decentralized Trust System:** Since records are distributed across the blockchain network, no single entity can manipulate or alter user reviews or transaction history.

By leveraging blockchain, the platform guarantees **trust, security, and authenticity**, making it a **reliable and fraud-resistant P2P marketplace**.

## Tech Stack

### **Frontend Tech Stack**


| **Category**                | **Technologies/Tools**                                                               |
| --------------------------- | ------------------------------------------------------------------------------------ |
| **Framework**               | Next.js (SSR/SSG)                                                                    |
| **Form Handling**           | React Hook Form + Zod Validation                                                     |
| **UI Components**           | ShadCN/UI, Radix UI (Primitives)                                                     |
| **Animations**              | Framer Motion                                                                        |
| **Authentication**          | Auth.js (Session Management, OAuth)                                                  |
| **State Management**        | React Context API / Zustand (Implicit via Next.js & Auth.js)                         |
| **Styling**                 | Tailwind CSS (Implied by ShadCN/UI)                                                  |
| **Component Documentation** | Storybook.js                                                                         |
| **Testing**                 | Component Tests (Jest/React Testing Library), Accessibility (Axe), Visual Regression |
| **Design Collaboration**    | Figma (Final UI Design Pending)                                                      |
| **Backend Communication**   | Next.js API Routes + Prisma ORM (Database Interaction)                               |

---

### **Key Features**

1. **Performance & SEO**: SSR/SSG via Next.js.
2. **Validation**: Client-side validation with Zod + React Hook Form.
3. **Dynamic UI**: Modular components (ShadCN/UI) + animations (Framer Motion).
4. **Authentication**: Secure session management with Auth.js.
5. **Documentation**: Component library in Storybook.js.
6. **Testing**: Focus on accessibility and visual consistency.

### **Backend Tech Stack**


| **Category**                    | **Technologies/Tools**                               |
| ------------------------------- | ---------------------------------------------------- |
| **Language**                    | Go (Golang)                                          |
| **API Framework**               | RESTful API (Standard HTTP/JSON)                     |
| **Microservices Communication** | gRPC (High-performance RPC framework)                |
| **Primary Database**            | PostgreSQL (Structured metadata storage)             |
| **Blob/File Storage**           | Supabase Storage (For files, images, etc.)           |
| **Chat Data Storage**           | MongoDB (NoSQL for unstructured chat messages)       |
| **Caching**                     | Redis (Session caching, rate limiting, etc.)         |
| **Containerization**            | Docker (Service isolation, scalability)              |
| **Real-Time Communication**     | WebSocket (Chat application bidirectional messaging) |
| **ORM**                         | GORM (Go Object-Relational Mapping for PostgreSQL)   |
| **Authentication**              | JWT/OAuth2 (Integrated with Auth.js on frontend)     |
| **Documentation**               | OpenAPI documentaion (Swagger UI)                    |
| **hashicorp vault**             | Storing the Secert Key (JWT_Serect)                  |

---

### **Key Features**

1. **Scalability**: Microservices architecture with gRPC for inter-service communication.
2. **Performance**: Go’s concurrency model + Redis caching for low-latency responses.
3. **Data Diversity**:
   - PostgreSQL for structured metadata (users, orders, profiles).
   - MongoDB for flexible chat message storage.
   - Supabase for scalable blob/file storage.
4. **Real-Time Chat**: WebSocket integration for instant messaging.

---


# Peer-to-Peer Marketplace - Agile User Stories


---

## 1. User Registration

| **ID**                  | US-001                                                                                                                                                                      |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | User Account Setup                                                                                                                                                          |
| **As a**                | New user                                                                                                                                                                     |
| **I want**              | To register with an email and password                                                                                                                                       |
| **So that**             | I can create an account on the platform                                                                                                                                      |
| **Acceptance Criteria** | - Users can sign up with an email and password.<br>- The system verifies and approves the registration.                                                                      |
| **Priority**            | High                                                                                                                                                                         |
| **Story Points**        | 3                                                                                                                                                                            |

---

## 2. KYC Verification

| **ID**                  | US-002                                                                                                                                                                      |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | KYC Verification                                                                                                                                                             |
| **As a**                | Registered user                                                                                                                                                              |
| **I want**              | To complete KYC verification by submitting identity proof                                                                                                                    |
| **So that**             | I can securely participate in the marketplace                                                                                                                                |
| **Acceptance Criteria** | - KYC verification requires identity proof submission.<br>- The system verifies and approves accounts before allowing transactions.                                           |
| **Priority**            | High                                                                                                                                                                         |
| **Story Points**        | 2                                                                                                                                                                            |


## 3. Listing Digital Assets & Services

| **ID**                  | US-003                                                                                                                                                         |
| ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Sell Digital Assets and Services                                                                                                                               |
| **As a**                | Seller                                                                                                                                                         |
| **I want**              | To list my services or digital assets with descriptions and pricing                                                                                            |
| **So that**             | Buyers can discover and purchase them                                                                                                                          |
| **Acceptance Criteria** | - Sellers can create listings with images, descriptions, and prices.<br>- Listings are categorized and searchable.<br>- Sellers can update or remove listings. |
| **Priority**            | High                                                                                                                                                           |
| **Story Points**        | 4                                                                                                                                                              |

---

## 4. User Profile Management

| **ID**                  | US-004                                                                                                                         |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| **Title**               | Manage Your Profile                                                                                                            |
| **As a**                | User                                                                                                                           |
| **I want**              | To manage my profile information                                                                                               |
| **So that**             | I can update my details and preferences                                                                                        |
| **Acceptance Criteria** | - Users can edit their profile details.<br>- The system updates the profile information.<br>- Users can change their password. |
| **Priority**            | Medium                                                                                                                         |
| **Story Points**        | 3                                                                                                                              |

---

## 5 . Searching and Filtering Listings

| **ID**                  | US-005                                                                                                                                                                 |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Discover Services and Assets                                                                                                                                           |
| **As a**                | Buyer                                                                                                                                                                  |
| **I want**              | To search and filter listings                                                                                                                                          |
| **So that**             | I can easily find the services or assets that match my needs                                                                                                           |
| **Acceptance Criteria** | - Buyers can search by keywords, categories, and price range.<br>- The system displays relevant results with sorting options.<br>- Users can save favorites for later. |
| **Priority**            | Medium                                                                                                                                                                 |
| **Story Points**        | 3                                                                                                                                                                      |

---

## 6. Secure Payment Processing

| **ID**                  | US-006                                                                                                                 |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Payment Processing                                                                                                     |
| **As a**                | Buyer                                                                                                                  |
| **I want**              | I want to securely process payments through the platform and the crypto Payment Gateway                                |
| **So that**             | I feel secure when making transactions                                                                                 |
| **Acceptance Criteria** | - Payments are processed via **Stripe** or another gateway.<br>- User can Scan the QR code of the USDT wallet address. |
| **Priority**            | High                                                                                                                   |
| **Story Points**        | 5                                                                                                                      |

---

## 7. Order Completion & Delivery

| **ID**                  | US-007                                                                                                                                                                                      |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Order Delivery System                                                                                                                                                                       |
| **As a**                | Seller                                                                                                                                                                                      |
| **I want**              | To complete and deliver orders through the platform                                                                                                                                         |
| **So that**             | Buyers receive their purchases efficiently                                                                                                                                                  |
| **Acceptance Criteria** | - Sellers mark the order as **delivered** upon completion.<br>- Buyers receive notifications and can review the delivery.<br>- The order is marked as **completed** when the buyer accepts. |
| **Priority**            | High                                                                                                                                                                                        |
| **Story Points**        | 4                                                                                                                                                                                           |

---

## 8. Reviews & Ratings

| **ID**                  | US-008                                                                                                                                                              |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Trust-Based Review System                                                                                                                                           |
| **As a**                | User                                                                                                                                                                |
| **I want**              | To leave and read reviews after a transaction                                                                                                                       |
| **So that**             | I can make informed decisions based on past experiences                                                                                                             |
| **Acceptance Criteria** | - Users can rate transactions from 1 to 5 stars.<br>- Reviews must be linked to completed orders.<br>- The system prevents fake reviews through blockchain storage. |
| **Priority**            | Medium                                                                                                                                                              |
| **Story Points**        | 3                                                                                                                                                                   |

---

## 9. Accessibility Support

| **ID**                  | US-009                                                                                                                                                                                                          |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Accessibility Support                                                                                                                                                                                           |
| **As a**                | User with disabilities                                                                                                                                                                                          |
| **I want**              | To use accessibility features like screen readers, keyboard navigation, and high contrast modes                                                                                                                 |
| **So that**             | I can effectively use the platform despite visual or motor imparements                                                                                                                                          |
| **Acceptance Criteria** | - Platform complies with WCAG 2.1 AA standards.<br>- Screen reader compatibility for all core functions.<br>- Keyboard navigation for all interactive elements.<br>- Adjustable text size and contrast options. |
| **Priority**            | High                                                                                                                                                                                                            |
| **Story Points**        | 5                                                                                                                                                                                                               |

---

## 10. Responsive Design

| **ID**                  | US-010                                                                                                                                                                                                                |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Mobile-Responsive Interface Support                                                                                                                                                                                   |
| **As a**                | Mobile user                                                                                                                                                                                                           |
| **I want**              | The platform to adapt seemlessly to my mobile device                                                                                                                                                                  |
| **So that**             | I can browse, buy, and sell services on the go                                                                                                                                                                        |
| **Acceptance Criteria** | - All pages render correctly on mobile devices of various sizes.<br>- Touch-friendly UI elements with appropriate spacing.<br>- Simplified navigation menu for mobile screens.<br>- Mobile-optimized payment process. |
| **Priority**            | High                                                                                                                                                                                                                  |
| **Story Points**        | 4                                                                                                                                                                                                                     |

---

## 11. Language Preferences

| **ID**                  | US-011                                                                                                                                                                                                      |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Language Preferences                                                                                                                                                                                        |
| **As a**                | International user                                                                                                                                                                                          |
| **I want**              | To change the language of the application                                                                                                                                                                   |
| **So that**             | I can use the platform in my preferred language                                                                                                                                                             |
| **Acceptance Criteria** | - Language selector in the header/footer.<br>- Support for at least 5 major languages.<br>- All UI elements, notifications, and emails are translated.<br>- Persistent language preference across sessions. |
| **Priority**            | Medium                                                                                                                                                                                                      |
| **Story Points**        | 4                                                                                                                                                                                                           |

---

## 12. Dark Mode Theme

| **ID**                  | US-012                                                                                                                                                                                                    |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Dark Mode Theme                                                                                                                                                                                           |
| **As a**                | User                                                                                                                                                                                                      |
| **I want**              | To toggle between light and dark mode                                                                                                                                                                     |
| **So that**             | I can reduce eye strain and save battery life                                                                                                                                                             |
| **Acceptance Criteria** | - Easily accessible theme toggle in the UI.<br>- Consistent color scheme across all pages in dark mode.<br>- Persistent preference saved to user profile.<br>- Automatic detection of system preferences. |
| **Priority**            | Low                                                                                                                                                                                                       |
| **Story Points**        | 3                                                                                                                                                                                                         |

---

## 13. Service Preview

| **ID**                  | US-013                                                                                                                                                                                                                |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Service Preview                                                                                                                                                                                                       |
| **As a**                | Buyer                                                                                                                                                                                                                 |
| **I want**              | To see detailed previews of services with images and examples                                                                                                                                                         |
| **So that**             | I can better understand what I'm purchasing                                                                                                                                                                           |
| **Acceptance Criteria** | - Gallery view for multiple images/examples per service.<br>- Lightbox for enlarged image viewing.<br>- Sample previews for digital assets where applicable.<br>- Video embedding support for service demonstrations. |
| **Priority**            | Medium                                                                                                                                                                                                                |
| **Story Points**        | 3                                                                                                                                                                                                                     |

---

## 14. Notification Settings

| **ID**                  | US-014                                                                                                                                                                                                                   |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Title**               | Notification Settings                                                                                                                                                                                                    |
| **As a**                | User                                                                                                                                                                                                                     |
| **I want**              | To customize which notifications I receive and how                                                                                                                                                                       |
| **So that**             | I can manage platform communications based on my preferences                                                                                                                                                             |
| **Acceptance Criteria** | - Granular control over notification types (orders, messages, promotions).<br>- Options for email, push, and in-app notifications.<br>- Ability to set quiet hours.<br>- One-click unsubscribe from email notifications. |
| **Priority**            | Low                                                                                                                                                                                                                      |
| **Story Points**        | 2                                                                                                                                                                                                                        |

---

## 15. In-app Messaging

| **ID**                  | US-015                                                                                                                                                                                  |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | In-app Messaging                                                                                                                                                                        |
| **As a**                | User                                                                                                                                                                                    |
| **I want**              | To communicate with other users through an in-app chat system                                                                                                                           |
| **So that**             | I can discuss service details before making a purchase                                                                                                                                  |
| **Acceptance Criteria** | - Real-time messaging with typing indicators.<br>- Ability to share images and files.<br>- Chat history persistence.<br>- Notification for new messages.<br>- Online status indicators. |
| **Priority**            | Medium                                                                                                                                                                                  |
| **Story Points**        | 4                                                                                                                                                                                       |

---

## 16. Crypto Wallet Connection

| **ID**                  | US-016                                                                                                                                                                                                |
| ----------------------- |-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Title**               | Crypto Wallet Connection                                                                                                                                                                              |
| **As a**                | User                                                                                                                                                                                                  |
| **I want**              | To connect my cryptocurrency wallet to the platform                                                                                                                                                   |
| **So that**             | I can easily make and receive payments                                                                                                                                                                |
| **Acceptance Criteria** | - Support for major wallet providers (Solana Wallet).<br>- Wallet connection status visible in UI.<br>- One-click payment from connected wallet.<br>- Transaction history viewable in user dashboard. |
| **Priority**            | High                                                                                                                                                                                                  |
| **Story Points**        | 5                                                                                                                                                                                                     |

---

## 17. Platform Onboarding

| **ID**                  | US-017                                                                                                                                                                         |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Title**               | Platform Onboarding                                                                                                                                                            |
| **As a**                | New user                                                                                                                                                                       |
| **I want**              | To see interactive tutorials explaining how to use the platform                                                                                                                |
| **So that**             | I can quickly learn how to navigate and use all features                                                                                                                       |
| **Acceptance Criteria** | - First-time user walkthrough.<br>- Context-sensitive help tooltips.<br>- Dismissible and resumable tutorials.<br>- Video tutorials for complex features like crypto payments. |
| **Priority**            | Low                                                                                                                                                                            |
| **Story Points**        | 3                                                                                                                                                                              |

---

## 18. Compare Services

| **ID**                  | US-018                                                                                                                                                                            |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Compare Services                                                                                                                                                                  |
| **As a**                | Buyer                                                                                                                                                                             |
| **I want**              | To compare multiple services side by side                                                                                                                                         |
| **So that**             | I can make an informed decision on which to purchase                                                                                                                              |
| **Acceptance Criteria** | - Select up to 4 services for comparison.<br>- Visual comparison of key features and pricing.<br>- Highlight differences between services.<br>- Save comparison for later review. |
| **Priority**            | Medium                                                                                                                                                                            |
| **Story Points**        | 3                                                                                                                                                                                 |

---

## 19. Personalized Dashboard

| **ID**                  | US-019                                                                                                                                                                                   |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Personalized Dashboard                                                                                                                                                                   |
| **As a**                | User                                                                                                                                                                                     |
| **I want**              | To see a dashboard with my recent activity and personalized recommendations                                                                                                              |
| **So that**             | I can quickly access relevant information and services                                                                                                                                   |
| **Acceptance Criteria** | - Overview of active orders and earnings.<br>- Quick access to favorite services and sellers.<br>- Personalized service recommendations.<br>- Crypto market trends and conversion rates. |
| **Priority**            | Medium                                                                                                                                                                                   |
| **Story Points**        | 4                                                                                                                                                                                        |

---

## 20. Portfolio Display

| **ID**                  | US-020                                                                                                                                                                                                |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Portfolio Display                                                                                                                                                                                     |
| **As a**                | Seller                                                                                                                                                                                                |
| **I want**              | To showcase my previous work in a visually appealing portfolio                                                                                                                                        |
| **So that**             | Potential buyers can see examples of my skills and quality                                                                                                                                            |
| **Acceptance Criteria** | - Dedicated portfolio section on seller profile.<br>- Customizable layout and organization.<br>- Support for various media types (images, videos, documents).<br>- Option to highlight featured work. |
| **Priority**            | Medium                                                                                                                                                                                                |
| **Story Points**        | 3                                                                                                                                                                                                     |

---
## **21. Report of the User (Both Seller and Buyer Activities Statement)**

| **ID**                  | US-021                                                                                                                                                        |
| ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | User Activity Report                                                                                                                                           |
| **As a**                | Platform User (Seller or Buyer)                                                                                                                                |
| **I want**              | To generate a report of my activities, including transactions and interactions                                                                                |
| **So that**             | I can review my past activities, track performance, and manage my business effectively                                                                        |
| **Acceptance Criteria** | - Ability to view a detailed report of transactions and interactions.<br>- Filter options by date range and activity type.<br>- Export report as PDF or CSV. |
| **Priority**            | High                                                                                                                                                           |
| **Story Points**        | 5                                                                                                                                                              |  

---
## **22. Copy Transaction ID and Check on Block Scanner**

| **ID**                  | US-022                                                                                                                                    |
| ----------------------- |-------------------------------------------------------------------------------------------------------------------------------------------|
| **Title**               | Copy Transaction ID and Check on Block Scanner                                                                                            |
| **As a**                | Platform User (Seller or Buyer)                                                                                                           |
| **I want**              | To copy my transaction ID and check its status on a blockchain explorer                                                                   |
| **So that**             | I can verify the transaction details and ensure it has been processed successfully                                                        |
| **Acceptance Criteria** | - Display transaction ID in order details.<br>- "Copy" button for easy copying.<br>- Direct link to a block explorer (Our Own BlockChain) |
| **Priority**            | High                                                                                                                                      |
| **Story Points**        | 3                                                                                                                                         |

---

## **23. User Manual**

| **ID**                  | US-023                                                                                                              |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------ |
| **Title**               | User Manual                                                                                                        |
| **As a**                | Platform User (Seller or Buyer)                                                                                   |
| **I want**              | A comprehensive user manual that guides me on how to use the application effectively                             |
| **So that**             | I can easily navigate and utilize all features without confusion                                                  |
| **Acceptance Criteria** | - Step-by-step instructions with screenshots.<br>- Covers key features (registration, transactions, messaging, etc.).<br>- Available in multiple formats (PDF, web, in-app help).<br>- Searchable FAQ section. |
| **Priority**            | Medium                                                                                                            |
| **Story Points**        | 4                                                                                                                 |

---

### **24. Customer Support (Automated, Rule-Based)**

| **ID**                  | US-024                                                                                                                             |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Automated Customer Support                                                                                                        |
| **As a**                | User (Seller or Buyer)                                                                                                            |
| **I want**              | To get instant assistance through an automated support system without human intervention                                         |
| **So that**             | I can quickly resolve my queries based on predefined responses and decision trees                                                |
| **Acceptance Criteria** | - No human agents involved.<br>- Responses based on a predefined decision tree.<br>- Supports common queries like orders, payments, shipping.<br>- Available 24/7.<br>- Option to provide feedback if the response was helpful. |
| **Priority**            | High                                                                                                                              |
| **Story Points**        | 5                                                                                                                                 |

---

### **Sorted User Stories by Story Points**

#### **Story Points 5**
1. **US-004**: Secure Payment Processing
2. **US-007**: Accessibility Support
3. **US-014**: Crypto Wallet Connection
4. **US-021**: User Activity Report
5. **US-024**: Automated Customer Support

#### **Story Points 4**
6. **US-002**: Listing Digital Assets & Services
7. **US-005**: Order Completion & Delivery
8. **US-009**: Responsive Design
9. **US-009**: Language Preferences
10. **US-013**: In-app Messaging
11. **US-017**: Personalized Dashboard
12. **US-023**: User Manual

#### **Story Points 3**
13. **US-001**: User Registration
14. **US-003**: User Profile Management
15. **US-003**: Searching and Filtering Listings
16. **US-006**: Reviews & Ratings
17. **US-010**: Dark Mode Theme
18. **US-011**: Service Preview
19. **US-015**: Platform Onboarding
20. **US-016**: Compare Services
21. **US-018**: Portfolio Display
22. **US-022**: Copy Transaction ID

#### **Story Points 2**
23. **US-002**: KYC Verification
24. **US-012**: Notification Settings

---

### **Total Story Points**
- **5 points**: 5 stories × 5 = **25**
- **4 points**: 7 stories × 4 = **28**
- **3 points**: 10 stories × 3 = **30**
- **2 points**: 2 stories × 2 = **4**

**Grand Total**:  **87** story points.

---