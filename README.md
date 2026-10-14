# my_profile
A clean, modern and responsive Student Profile Mobile Application built with Flutter and Dart. It presents a student's profile, skills, education, projects and contact details in a professional, easy-to-navigate mobile interface.

## Project Description

MyProfile is a functional mobile app (not just a UI design) that works as a digital student portfolio. It includes a splash screen, a home screen with quick-access cards, and dedicated screens for profile, skills, education, projects and contact information. The app uses cards, icons, images, a custom font (Poppins) and a consistent colour scheme, and is designed to work on different mobile screen sizes.
This project is a starting point for a Flutter application.

## Features:
  ## 1.Splash Screen 
         - gradient launch screen with app icon, app name and student name
  ## 2.Home Screen
         - profile image, name, short introduction, title and quick-access navigation cards
  ## 3.Student Profile 
         - full name, institute, degree program, semester and location
  ## 4.Skills Section 
         - skill cards with icons, categories and proficiency indicators (Flutter, Dart, Firebase, C++, Python, Git/GitHub)
  ## 5.Education Section 
         - degree, institute, duration, current semester and core focus areas
  ## 6.Projects Section 
         - 3 project cards with icon, description, technologies used and GitHub link
  ## 7.Contact Section 
         - email, phone, location, GitHub and portfolio
  ## 8.Three navigation methods 
     - Bottom Navigation Bar, Navigation Drawer and button/card navigation
  ## 9.Responsive layout 
     - sizes are calculated from the screen size to avoid overflow
  ## 10.Custom font - Poppins
<table>
  <thead>
    <tr>
      <th align="left">Technology</th>
      <th align="left">Purpose</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Flutter 3.44.0</td>
      <td>UI framework</td>
    </tr>
    <tr>
      <td>Dart 3.12.0</td>
      <td>Programming language</td>
    </tr>
    <tr>
      <td>Android Studio / VS Code</td>
      <td>Development environment</td>
    </tr>
    <tr>
      <td>Git &amp; GitHub</td>
      <td>Version control and hosting</td>
    </tr>
    <tr>
      <td>Poppins</td>

## Screenshots
## Screenshots

<div align="center">

<table>
  <tbody>
    <tr>
      <td align="center" width="25%">
        <img src="https://github.com/user-attachments/assets/94618193-6e7b-4313-8a60-9e77f3b4577e" width="200" alt="Splash Screen"><br>
        <br>
        <b>Splash Screen</b>
      </td>
      <td align="center" width="25%">
        <img src="https://github.com/user-attachments/assets/ca4dd2c1-513a-497a-ba61-54edef613db6" width="200" alt="Home Screen"><br>
        <br>
        <b>Home Screen</b>
      </td>
      <td align="center" width="25%">
        <img src="https://github.com/user-attachments/assets/5779b385-42cf-44ba-8c37-3d127a308ee5" width="200" alt="Student Profile"><br>
        <br>
        <b>Student Profile</b>
      </td>
      <td align="center" width="25%">
        <img src="https://github.com/user-attachments/assets/b4b179f6-9b6d-4297-b4c6-71c8f2e80dd1" width="200" alt="Skills"><br>
        <br>
        <b>Skills</b>
      </td>
    </tr>
    <tr>
      <td align="center" width="25%">
        <img src="https://github.com/user-attachments/assets/28de5bd1-edc8-4ff1-93a6-57a1a719b246" width="200" alt="Education"><br>
        <br>
        <b>Education</b>
      </td>
      <td align="center" width="25%">
        <img src="https://github.com/user-attachments/assets/a767d0f4-7f3e-4c1d-9512-79ee9eb90fda" width="200" alt="Projects"><br>
        <br>
        <b>Projects</b>
      </td>
      <td align="center" width="25%">
        <img src="https://github.com/user-attachments/assets/c90fcf20-976d-4b25-9afc-fb5474e61bcf" width="200" alt="Contact"><br>
        <br>
        <b>Contact</b>
      </td>
      <td align="center" width="25%">
        <img src="https://github.com/user-attachments/assets/c6649202-f454-4269-a7a4-7297ff0717cd" width="200" alt="Navigation Drawer"><br>
        <br>
        <b>Navigation Drawer</b>
      </td>
    </tr>
  </tbody>
</table>

</div>



## Project Structure

```
my_profile/
|
|-- assets/
|    |-- icons/                      # App icons (e.g. graduation cap)
|    |-- images/                     # Profile image and other images
|    `-- fonts/                      # Poppins custom font
|
|-- lib/
|    |-- main.dart                   # App entry point
|    `-- App/
|         |-- MyApp.dart             # Root widget and theme
|         |
|         |-- Core/
|         |    |-- app_colors.dart             # Colour scheme
|         |    |-- arraysData.dart             # Skills, projects and other data
|         |    |-- navigation_controller.dart  # Selected tab index
|         |    `-- screen_size.dart            # Responsive sizing helper
|         |
|         |-- Screens/
|         |    |-- splash_screen.dart          # Splash screen
|         |    |-- home_screen.dart            # Home with Drawer and quick access
|         |    |-- navigation_page.dart        # Bottom Navigation Bar and pages
|         |    |-- profile_screen.dart         # Student profile
|         |    |-- skill_screen.dart           # Skills
|         |    |-- education_screen.dart       # Education
|         |    |-- project_screen.dart         # Projects
|         |    `-- cotact_screen.dart          # Contact
|         |
|         `-- Widget/
|              |-- custom_button.dart          # Reusable button
|              |-- drawer_widget.dart          # Navigation Drawer
|              |-- education_card.dart         # Education card
|              |-- imageAvatar.dart            # Profile avatar
|              |-- profile_card.dart           # Profile card
|              |-- project_card.dart           # Project card
|              |-- skill_card.dart             # Skill card
|              `-- white_card.dart             # Reusable white card
|
|-- test/
|    `-- widget_test.dart
|-- pubspec.yaml                     # Dependencies, assets and fonts
`-- README.md
```

<table>
  <thead>
    <tr>
      <th align="left">Folder</th>
      <th align="left">Purpose</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>assets/</code></td>
      <td>Icons, images and the Poppins font used in the app</td>
    </tr>
    <tr>
      <td><code>lib/App/Core/</code></td>
      <td>Colours, data, navigation state and responsive screen sizing</td>
    </tr>
    <tr>
      <td><code>lib/App/Screens/</code></td>
      <td>All app screens (splash, home, profile, skills, education, projects, contact)</td>
    </tr>
    <tr>
      <td><code>lib/App/Widget/</code></td>
      <td>Reusable widgets such as cards, buttons, avatar and drawer</td>
    </tr>
    <tr>
      <td><code>test/</code></td>
      <td>Flutter widget test</td>
    </tr>
  </tbody>
</table>




  
Organized code - separated into Core, Screens and Widget folders
