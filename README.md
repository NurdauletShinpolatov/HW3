# Flutter Image Gallery App

This Flutter app is a simple image gallery that allows users to view all images, filter by authors, view saved images, and add new images to the collection.

## Getting Started

1. Ensure you have Flutter installed. If not, follow the instructions on the [Flutter website](https://flutter.dev/docs/get-started/install).

2. Clone this repository:

    ```bash
    git clone https://github.com/your-username/flutter-image-gallery.git
    ```

3. Change into the project directory:

    ```bash
    cd flutter-image-gallery
    ```

4. Run the app:

    ```bash
    flutter run
    ```

## App Structure

- **Home Screen:** Displays a welcome message and buttons to navigate to different sections of the app.

- **All Images Screen:** Shows a list of all images with their sizes and authors.

- **Authors Screen:** Lists all authors.

- **Saved Images Screen:** Displays a list of saved images.

- **Add New Image Screen:** Allows users to add a new image to the collection by providing a URL, size, and author.

## Code Overview

- `main.dart`: Defines routes and initializes the `MyApp` widget.

- `MyApp` Widget: Defines the overall structure of the app.

- `Home.dart`: Home screen with buttons to navigate.

- `AllImages.dart`: Displays all images with sizes and authors.

- `Authors.dart`: Lists all authors.

- `SavedImages.dart`: Displays saved images.

- `AddNewImage.dart`: Allows users to add a new image.

## Adding a New Image

1. Navigate to the "Add new image" screen.

2. Fill in the form with image details.

3. Press "Submit" to add the new image.