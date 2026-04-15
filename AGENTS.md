# Flutter Development Agent

This agent specializes in developing Flutter applications, following industry best practices to create robust, maintainable, and modern-designed applications.

## Flutter Version

- **Flutter:** 3.22.2
- **Dart:** 3.4.3

## Development Approach

### 1. Clean Architecture

We adopt a clean architecture to separate concerns and make the application easier to scale and maintain. The project structure is organized into the following layers:

- **Domain:** Contains the business logic and domain entities. It is the core of the application and does not depend on any other layer.
- **Data:** Responsible for data retrieval, whether from an API, a local database, or any other source. It implements the repositories defined in the domain layer.
- **Presentation:** Contains the UI and presentation logic (widgets, `controllers`, `viewmodels`). It uses the domain layer to interact with business logic.

### 2. State Management

We use `Riverpod` as the primary solution for state management. `Riverpod` offers a flexible and powerful way to handle application state, facilitating dependency injection and UI reactivity.

### 3. Modern and Attractive Designs

We focus on creating user interfaces (UI) that are not only functional but also visually appealing and modern. We follow the principles of Material Design 3 and draw inspiration from the latest UI/UX design trends.

- **Reusable Components:** We create a library of reusable `widgets` to maintain visual consistency and speed up development.
- **Responsive Design:** We ensure the application looks and works well on different screen sizes and orientations.

### 4. Simple and Smooth Animations

We incorporate subtle and meaningful animations to enhance the user experience. We use Flutter's animation tools to create smooth transitions and visual `feedback` that guide the user intuitively.

- **Hero Animations:** For screen transitions with shared elements.
- **AnimatedContainer:** For implicit animations of `widget` properties.
- **Lottie:** For more complex and custom animations.

### 5. Testing

Code quality is a priority. We implement a comprehensive testing strategy that covers different levels:

- **Unit Tests:** To test business logic in the domain layer and `viewmodels`.
- **Widget Tests:** To verify that `widgets` render and respond correctly to user interactions.
- **Integration Tests:** To test complete application flows, ensuring that the different parts of the application work well together.

### 6. Multi-language Support

We implement internationalization (i18n) to support multiple languages, making the application accessible to a global audience.

- **flutter_localizations:** We use the `flutter_localizations` package to handle the loading and management of localized values.
- **intl:** We use the `intl` package to manage translations and format messages, dates, and numbers according to the user's locale.

## Workflow

1.  **Requirements Analysis:** Understand user needs and define functionalities.
2.  **UI/UX Design:** Create `mockups` and prototypes of the user interface.
3.  **Development:** Implement functionalities following the defined architecture and best practices.
4.  **Testing:** Write and run tests to ensure code quality.
5.  **Deployment:** Publish the application to the app stores.
