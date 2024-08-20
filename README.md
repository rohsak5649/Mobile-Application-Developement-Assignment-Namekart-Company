*****To-Do List Mobile App*****
**Project Overview**
This project is a simple To-Do List mobile application developed as part of a Mobile Application Development assignment. The app allows users to add, edit, and delete tasks, mark tasks as completed, and set deadlines. The app is designed to work fully offline, with all data stored locally on the device.

**Features**
Add, Edit, and Delete Tasks: Users can create new tasks, edit existing ones, and delete tasks they no longer need.
Task Completion: Users can mark tasks as completed, helping them track their progress.
Set Deadlines: Each task can have a deadline, and tasks are sorted based on these deadlines.
Offline Functionality: All data is stored locally on the device, ensuring the app works even without an internet connection.

**Technology Stack**
Language: Swift
Framework: SwiftUI
Local Storage: UserDefaults for saving and loading tasks
IDE: Xcode

**File Structure**
ToDoItem.swift: Defines the data model for a to-do item.
ToDoViewModel.swift: Manages the logic for adding, editing, deleting, and saving tasks using local storage.
ContentView.swift: The main view displaying the list of tasks and options to add or edit tasks.
AddTaskView.swift: A view for adding new tasks or editing existing ones.

**How to Run the App**
Clone the repository to your local machine.
Open the .xcodeproj file in Xcode.
Select the appropriate device simulator or your physical device.
Build and run the project.
**Challenges and Approach**
One of the key challenges was ensuring the app functions fully offline. This was addressed by using UserDefaults for local storage. Additionally, creating an intuitive user interface with basic animations added to the user experience.

**License**
This project is for educational purposes as part of a Mobile Application Development course assignment.

