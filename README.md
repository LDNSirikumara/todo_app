# Flutter Todo List Application

## _Overview_

The Todo List application is developed using Flutter with flutter_riverpod for state management and sqflite for local storage. The application allows users to manage their tasks with CRUD operations and ensures data persistence.

## _Getting Started_

Clone the repository

```sh
git@github.com:LDNSirikumara/todo_app.git
```

```sh
flutter pub get
flutter run
```

## _State Management Approach_

The application uses flutter_riverpod for state management. This allows for a more modular and scalable approach to managing state in Flutter applications. Providers are used to manage the state of the todo list and ensure that the UI updates efficiently in response to user actions.

## _CRUD Operations_

Create: You can click on the Plus button.

Read: You can view on the home page; also, by clicking on the home page date, you can filter tasks.

Update: You can update tasks completed/not completed states by clicking on the checkbox.

Delete: You can delete task by hoding a task.
