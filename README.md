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
**ID:** US-017  
**Title:** Platform Onboarding  
**As a:** New user  
**I want:** Interactive tutorials explaining platform usage  
**So that:** I can quickly learn navigation and features  

*Acceptance Criteria:*  
1. *Given* a new user completes registration  
   *When* they first access the dashboard  
   *Then* an interactive walkthrough starts automatically with 5 sequential steps (60s each) highlighting core features, using tooltips with ≤500ms fade-in animation  

2. *Given* a user hovers over any UI element marked with (?)  
   *When* they maintain hover for 1.5 seconds  
   *Then* a contextual tooltip appears with 300-word max explanation, loaded from client-side cache (TTL: 24h)  

3. *Given* a user starts then dismisses a tutorial  
   *When* they access any feature page  
   *Then* a non-intrusive resume button (24×24px) appears in the top-right corner, persisting progress for 30 days via localStorage  

4. *Given* a user attempts a crypto payment  
   *When* they reach the confirmation screen  
   *Then* a 90s video tutorial overlay plays automatically (720p, 2.5MB max) with closed captions and adjustable playback speed (0.5x-2x)  

*Priority:* Low  
*Story Points:* 3  

---

## 18. Compare Services  
**ID:** US-018  
**Title:** Compare Services  
**As a:** Buyer  
**I want:** Side-by-side service comparisons  
**So that:** I can make informed purchase decisions  

*Acceptance Criteria:*  
1. *Given* a user selects services for comparison  
   *When* they check >4 items  
   *Then* the UI displays error toast "Maximum 4 services" and auto-unchecks the last selection, with haptic feedback on mobile  

2. *Given* 2-4 services are selected  
   *When* the user clicks "Compare"  
   *Then* a 3-column grid loads within 2s, displaying: Pricing (converted to user's currency), Delivery Time (hours), and 5-star Ratings (with 0.1 increments)  

3. *Given* services are compared  
   *When* key differences exist  
   *Then* cells with >20% variance from average highlight in #FFEBEE (desktop) or show ★ (mobile), verified through nightly price benchmarking jobs  

4. *Given* a comparison is active  
   *When* the user clicks "Save"  
   *Then* a PDF/CSV generates server-side (max 500ms latency) containing all comparison data, triggering download with "comparison_[timestamp].pdf" naming  

*Priority:* Medium  
*Story Points:* 3  

---

## 19. Personalized Dashboard  
**ID:** US-019  
**Title:** Personalized Dashboard  
**As a:** User  
**I want:** Custom activity/recommendations dashboard  
**So that:** I access relevant information quickly  

*Acceptance Criteria:*  
1. *Given* a user opens the dashboard  
   *When* the API responds within 1.2s  
   *Then* they see:  
   - Active orders (status badges updated via WebSocket every 15s)  
   - Top 3 recommendations (ML model v2.3+)  
   - Real-time crypto rates (15m refresh, ±0.5% accuracy)  

2. *Given* recommended services  
   *When* a user clicks "Not Relevant"  
   *Then* the item fades out (400ms) and replacement slides in from cache, while a PATCH request updates the recommendation model  

3. *Given* the crypto rates widget  
   *When* market data is unavailable  
   *Then* displays last-known values with ⚠️ icon and "Data delayed" tooltip, queuing background refresh every 2m  

*Priority:* Medium  
*Story Points:* 4  

---

## 20. Portfolio Display  
**ID:** US-020  
**Title:** Portfolio Display  
**As a:** Seller  
**I want:** Visually appealing work portfolio  
**So that:** Buyers see my capabilities  

*Acceptance Criteria:*  
1. *Given* a seller edits their portfolio  
   *When* uploading media  
   *Then* accepts:  
   - Images: WebP/AVIF ≤5MB (auto-compressed to 1920px width)  
   - Videos: MP4 ≤30s (H.264, 720p)  
   - Docs: PDF ≤10MB (text extraction for search)  

2. *Given* portfolio items are added  
   *When* arranging layout  
   *Then* uses React-Grid-Layout with persisting positions via PATCH /portfolio_layout (JWT-validated)  

3. *Given* a buyer views a portfolio  
   *When* clicking featured work  
   *Then* opens lightbox with EXIF metadata (for images) or SHA-256 file hash verification badge  

*Priority:* Medium  
*Story Points:* 3  

---

## 21. User Activity Report  
**ID:** US-021  
**Title:** User Activity Report  
**As a:** User  
**I want:** Activity reports  
**So that:** I can review transactions/performance  

*Acceptance Criteria:*  
1. *Given* report generation  
   *When* selecting date range  
   *Then* validates start ≤ end (client-side) and ≤365 days (server-side), with error: "Maximum 1 year range"  

2. *Given* CSV export requested  
   *When* data exceeds 10k rows  
   *Then* queues background job, emails download link (expiring in 24h) with AES-256 encryption  

3. *Given* PDF generation  
   *Then* includes watermark with user ID and timestamp, verified through QR code in footer  

*Priority:* High  
*Story Points:* 5  

---

## 22. Transaction ID Verification  
**ID:** US-022  
**Title:** Transaction ID Verification  
**As a:** User  
**I want:** Verify transactions on blockchain  
**So that:** I confirm payment status  

*Acceptance Criteria:*  
1. *Given* a transaction exists  
   *When* viewing details  
   *Then* displays TX ID (first/last 4 chars masked) with "Copy" button using navigator.clipboard.writeText()  

2. *Given* TX ID is copied  
   *When* successful  
   *Then* shows green checkmark for 3s and vibrates (mobile)  

3. *Given* "View on Explorer" clicked  
   *Then* opens new tab to https://explorer.scala.org/tx/${id} with Referer header validation  

*Priority:* High  
*Story Points:* 3  

---

## 23. User Manual  
**ID:** US-023  
**Title:** User Manual  
**As a:** User  
**I want:** Comprehensive usage guide  
**So that:** I navigate without confusion  

*Acceptance Criteria:*  
1. *Given* manual access  
   *When* opened in-app  
   *Then* displays searchable React-based doc with:  
   - 50+ annotated screenshots (WebP format)  
   - Video embeds (Lite-Youtube-Embed)  
   - Interactive feature simulator  

2. *Given* PDF download  
   *Then* generates via puppeteer with TOC (≤5MB), including last-updated date in footer  

3. *Given* outdated manual  
   *When* version < current  
   *Then* shows "Update Available" banner, force-refreshes content after 7 days  

*Priority:* Medium  
*Story Points:* 4  

---

## 24. Automated Support  
**ID:** US-024  
**Title:** Automated Customer Support  
**As a:** User  
**I want:** Instant rule-based assistance  
**So that:** I resolve issues quickly  

*Acceptance Criteria:*  
1. *Given* support chat opened  
   *When* user types message  
   *Then* responds within 800ms using decision-tree v3.1, logging interaction in encrypted Firestore  

2. *Given* unrecognized query  
   *When* 3+ failed matches  
   *Then* escalates to "Contact Us" form pre-filled with chat history (base64 encoded)  

3. *Given* feedback submitted  
   *Then* updates response accuracy score (0-100) and retrains model weekly if score <85  

*Priority:* High  
*Story Points:* 5  
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
