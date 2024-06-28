# Photo Frames App

## Overview
This is a demo photo frames application built with Flutter. The app allows users to select photos, apply various frames, use gestures for photo manipulation, and save or share the framed photos. The app includes a splash screen that displays when the app is launched.

## Features
- Splash Screen
- Photo Selection
- Frame Selection
- Photo Editing with Gestures
- Save & Share

## Setup Instructions
1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. Set up Firebase for your project and add the `google-services.json` or `GoogleService-Info.plist` to the project.
4. Run the app using `flutter run`.

## Usage Guide
- Select a photo from the gallery.
- Choose a frame from the available options.
- Use gestures to manipulate the photo within the frame.
- Save or share the framed photo.

## Code Structure
- `main.dart`: Entry point of the application.
- `splash_screen.dart`: Implements the splash screen.
- `photo_frame_page.dart`: Main page for photo selection, framing, and editing.
- `photo_editor.dart`: Widget for photo editing with gestures.
- `frame_selector.dart`: Widget for frame selection.
- `firebase_service.dart`: Service to handle frame downloads from Firebase.

## License
This project is licensed under the MIT License.
