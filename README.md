# E-Commerce Flutter App

## Project Overview
This project is a **Flutter-based E-Commerce application** with separate **User** and **Admin** modules.

- The **User App** allows customers to browse products, manage their cart, and place orders.
- The **Admin Panel** allows administrators to manage products, view and update orders, and oversee the app’s operations.

## Features

### User Module
- **User Authentication:** Login and Sign Up pages
- **Product Listing:** Browse products with name, price, and icon
- **Cart Management:** Add/remove products, view total price, proceed to checkout
- **Order Management:** Place orders, view order confirmation, track past orders

### Admin Module
- **Admin Authentication:** Login page for administrators
- **Dashboard:** Central hub with buttons for Product Management and Orders Management
- **Product Management:** Add, edit, delete products
- **Orders Management:** View and update all orders

## Navigation Flow

### User Flow
```
UserLoginPage → ProductListPage
        ↓
UserSignupPage → ProductListPage
ProductListPage → CartPage → OrderConfirmationPage → OrderHistoryPage
```

### Admin Flow
```
AdminLoginPage → AdminDashboard
                    ├─ ManageProductsPage
                    └─ ManageOrdersPage
```

## Technologies Used
- **Frontend:** Flutter, Dart
- **State Management:** Provider (for User Cart and Orders)
- **Backend:** [Specify if using Firebase, PHP, MySQL, etc.]

## Project Structure
```
User/
 ├─ auth/
 │   ├─ login_page.dart
 │   └─ signup_page.dart
 ├─ products/
 │   └─ product_list_page.dart
 ├─ cart/
 │   ├─ cart_provider.dart
 │   └─ cart_page.dart
 ├─ orders/
 │   ├─ order_confirmation_page.dart
 │   └─ order_history_page.dart
 └─ main.dart

Admin/
 ├─ auth/
 │   └─ login_page.dart
 ├─ dashboard/
 │   └─ admin_dashboard.dart
 ├─ products/
 │   └─ manage_products_page.dart
 ├─ orders/
 │   └─ manage_orders_page.dart
 └─ main.dart
```

## Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/PurvaVyawahare/E--com-App.git
   cd <project-folder>
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the User App**
   ```bash
   flutter run -t lib/main_user.dart
   ```

4. **Run the Admin App**
   ```bash
   flutter run -t lib/main_admin.dart
   ```

> Ensure you have Flutter installed and an emulator or physical device connected.

## Future Enhancements
- Integrate backend database (Firebase / MySQL) for product & order storage
- Add user profile management
- Implement push notifications for order updates
- Enhance UI/UX with animations and better design

## Author
**Purva Vyawahare**  
Email: [purvavyawahare17@gmail.com]  
LinkedIn: [www.linkedin.com/in/purva-vyawahare-739530332]

