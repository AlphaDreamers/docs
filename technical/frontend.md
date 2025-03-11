# Frontend Overview

The frontend is built using **Next.js**, leveraging server-side rendering and static site generation capabilities to enhance performance and SEO. It interacts with the backend via API routes, utilizing **Prisma ORM** to manage database communication efficiently.

## Form Handling & Validation

To ensure a seamless user experience, we use **Zod validation** combined with **React Hook Form**. This approach allows us to validate form data on the client side before sending requests to the backend, reducing incorrect submissions and providing clear user feedback for guided form completion.

## UI & Component Library

The UI is designed with a combination of:

- **ShadCN/UI** for accessible and customizable components
- **Radix UI** for primitive UI elements with high flexibility
- **Framer Motion** for animations and smooth UI interactions

The final UI design will be determined based on the upcoming **Figma** design.

## Authentication & Authorization

For authentication, we integrate **Auth.js**, which handles session management, authentication flows, and authorization utilities on the frontend.

## Component Documentation & Testing

The entire UI will be documented using **Storybook.js**, providing a centralized environment to visualize and interact with individual components.

Testing will depend on time constraints but will aim to include:

- Component tests
- Accessibility tests
- Visual regression tests

## Main Pages & Features

The site will focus on the following core pages:

1. **Homepage** – Provides site navigation, popular gig recommendations, and, if logged in, personalized job suggestions based on user activity.
2. **Profile Page** – Displays user profile information, with customization options for gig offerings if the user is a seller.
3. **Search Page** – Enables users to browse and filter gigs using various search parameters.
4. **Gig-Specific Page** – Displays gig details, including pricing, status, and relevant seller information.
