# iShop

**iShop** is a Flutter-based e-commerce app designed to showcase modern design, clean architecture, and advanced Flutter technologies.

## Design

The app's design is inspired by the clean and elegant layout from the [Figma design](https://www.figma.com/design/Db32TQ6SMVcvL9Rr7y61nq/Mobile-eCommerce-Clothing-Store-App-Design-(Community)?m=auto&t=QXDoOxZG7ZizNZNr-1), providing a smooth and trendy user experience.

<p align="center">
  <img src="https://github.com/ashrf100/i_shop/blob/main/images/figma.png" alt="Figma Design" width="400"/>
</p>

## Demo Video

[![iShop Demo](https://img.youtube.com/vi/YOUR_VIDEO_ID_HERE/0.jpg)](https://www.youtube.com/watch?v=YOUR_VIDEO_ID_HERE)

> Click on the image above to watch the demo video of the app.

## Screenshots

<p align="center">
  <img src="https://github.com/ashrf100/i_shop/blob/main/images/screenshot1.png" alt="Screenshot 1" width="250"/>
  <img src="https://github.com/ashrf100/i_shop/blob/main/images/screenshot2.png" alt="Screenshot 2" width="250"/>
  <img src="https://github.com/ashrf100/i_shop/blob/main/images/screenshot3.png" alt="Screenshot 3" width="250"/>
</p>

## Download APK

<p align="center">
  <a href="https://github.com/ashrf100/i_shop/releases/download/v1.0/iShop.apk">
    <img src="https://img.shields.io/badge/Download-APK-blue?style=for-the-badge" alt="Download APK">
  </a>
</p>

## Key Features

- **Clean Architecture**: The app is built following clean architecture principles, organized into **Data**, **Domain**, and **Presentation** layers for scalability and maintainability.
  
- **State Management**: Powered by the **BLoC** pattern combined with **Freezed**, the app ensures efficient state handling and immutable data structures.

- **Custom Exception Handling**: Comprehensive error management using a custom `AppExceptions` class, which handles errors such as network issues, API failures, database errors, and authentication issues.

- **Firebase Integration**: Supports secure user authentication with **Google** and **Facebook** sign-in through Firebase.

- **Dependency Injection**: Full dependency injection using `get_it`, allowing modular and easily testable code.

- **REST API Integration**: The app communicates with [DummyJSON](https://dummyjson.com/) using **GET**, **POST**, and **PUT** requests, ensuring smooth API interactions despite incomplete response data.

- **Networking & Error Handling**: Network requests are handled using `Dio` with Retrofit, and errors are managed through `Dartz`, providing reliable communication with external APIs.

- **Local Data Source**: Uses `Hive` for local data storage of favorite products and user information, enabling offline functionality.

- **Smooth Animations**: Trendy and fluid animations are implemented using both native Flutter animations and external libraries like **Flare** and **Lottie** for a modern user experience.

- **Custom Bottom Navigation Bar**: A dynamic, visually appealing bottom navigation bar that adapts with icons and badges, displaying real-time updates such as the number of items in the cart.

- **Responsive Layout**: Built with `flutter_screenutil`, the app adapts seamlessly to various screen sizes, providing a consistent user experience on both phones and tablets.
