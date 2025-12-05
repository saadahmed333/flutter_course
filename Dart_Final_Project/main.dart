import 'dart:convert';
import 'dart:io';

class User {
  var username;
  var password;
  var role;

  User(this.username, this.password, this.role);

  toJson() {
    return {"username": username, "password": password, "role": role};
  }

  static fromJson(json) {
    return User(json["username"], json["password"], json["role"]);
  }
}

class TaskModel {
  var id;
  var assignedTo;
  var task;
  var status;

  TaskModel(this.id, this.assignedTo, this.task, this.status);

  toJson() {
    return {"id": id, "assignedTo": assignedTo, "task": task, "status": status};
  }

  static fromJson(json) {
    return TaskModel(
      json["id"],
      json["assignedTo"],
      json["task"],
      json["status"],
    );
  }
}

class FileDB {
  static var userFile = File("users.json");
  static var taskFile = File("tasks.json");

  static readUsers() async {
    if (!userFile.existsSync()) {
      userFile.writeAsStringSync("[]");
    }
    var text = await userFile.readAsString();
    var list = jsonDecode(text);
    return list.map((e) => User.fromJson(e)).toList();
  }

  static saveUsers(users) async {
    await userFile.writeAsString(jsonEncode(users));
  }

  static readTasks() async {
    if (!taskFile.existsSync()) {
      taskFile.writeAsStringSync("[]");
    }
    var text = await taskFile.readAsString();
    var list = jsonDecode(text);
    return list.map((e) => TaskModel.fromJson(e)).toList();
  }

  static saveTasks(tasks) async {
    await taskFile.writeAsString(jsonEncode(tasks));
  }
}

void main() async {
  print("===== OFFICE MANAGEMENT SYSTEM =====");

  while (true) {
    print("");
    print("1. Login");
    print("2. Exit");
    stdout.write("Enter option: ");
    var choice = stdin.readLineSync();

    if (choice == "1") {
      await loginUser();
    } else if (choice == "2") {
      print("Goodbye!");
      exit(0);
    }
  }
}

loginUser() async {
  var users = await FileDB.readUsers();

  if (users.isEmpty) {
    print("\nNo user found... Creating default admin...");
    users.add(User("admin", "admin123", "admin"));
    await FileDB.saveUsers(users);
    print("Admin created: admin / admin123\n");
  }

  stdout.write("Username: ");
  var name = stdin.readLineSync();

  stdout.write("Password: ");
  var pass = stdin.readLineSync();

  users = await FileDB.readUsers();

  User? found;
  for (var u in users) {
    if (u.username == name && u.password == pass) {
      found = u;
    }
  }

  if (found == null) {
    print("Invalid username or password!");
    return;
  }

  print("\nWelcome ${found.role.toUpperCase()}!");

  if (found.role == "admin") {
    await adminMenu();
  } else if (found.role == "manager") {
    await managerMenu(found.username);
  } else if (found.role == "employee") {
    await employeeMenu(found.username);
  }
}

adminMenu() async {
  while (true) {
    print("\n----- ADMIN MENU -----");
    print("1. Create Manager");
    print("2. Create Employee");
    print("3. Logout");
    stdout.write("Choose: ");
    var ch = stdin.readLineSync();

    if (ch == "1") {
      await createUser("manager");
    } else if (ch == "2") {
      await createUser("employee");
    } else if (ch == "3") {
      return;
    }
  }
}

createUser(role) async {
  stdout.write("Enter username: ");
  var name = stdin.readLineSync();

  stdout.write("Enter password: ");
  var pass = stdin.readLineSync();

  var users = await FileDB.readUsers();
  users.add(User(name, pass, role));
  await FileDB.saveUsers(users);

  print("$role created!");
}

managerMenu(manager) async {
  while (true) {
    print("\n----- MANAGER MENU -----");
    print("1. Assign Task");
    print("2. View All Tasks");
    print("3. Logout");
    stdout.write("Choose: ");
    var c = stdin.readLineSync();

    if (c == "1") {
      await assignTask();
    } else if (c == "2") {
      await viewTasks();
    } else if (c == "3") {
      return;
    }
  }
}

assignTask() async {
  stdout.write("Assign to (employee username): ");
  var emp = stdin.readLineSync();

  stdout.write("Enter task: ");
  var text = stdin.readLineSync();

  var tasks = await FileDB.readTasks();
  var id = tasks.isEmpty ? 1 : tasks.last.id + 1;

  tasks.add(TaskModel(id, emp, text, "pending"));
  await FileDB.saveTasks(tasks);

  print("Task assigned!");
}

viewTasks() async {
  var tasks = await FileDB.readTasks();

  if (tasks.isEmpty) {
    print("No tasks found!");
    return;
  }

  print("\n----- TASK LIST -----");
  for (var t in tasks) {
    print("ID: ${t.id} | ${t.assignedTo} | ${t.task} | ${t.status}");
  }
}

employeeMenu(name) async {
  while (true) {
    print("\n----- EMPLOYEE MENU -----");
    print("1. View My Tasks");
    print("2. Update Task Status");
    print("3. Logout");
    stdout.write("Choose: ");
    var c = stdin.readLineSync();

    if (c == "1") {
      await viewMyTasks(name);
    } else if (c == "2") {
      await updateTask(name);
    } else if (c == "3") {
      return;
    }
  }
}

viewMyTasks(name) async {
  var tasks = await FileDB.readTasks();
  var mine = [];

  for (var t in tasks) {
    if (t.assignedTo == name) {
      mine.add(t);
    }
  }

  if (mine.isEmpty) {
    print("No tasks for you!");
    return;
  }

  print("\n----- YOUR TASKS -----");
  for (var t in mine) {
    print("ID: ${t.id} | ${t.task} | ${t.status}");
  }
}

updateTask(name) async {
  var tasks = await FileDB.readTasks();

  stdout.write("Enter task ID: ");
  var id = int.parse(stdin.readLineSync()!);

  TaskModel? found;
  for (var t in tasks) {
    if (t.id == id && t.assignedTo == name) {
      found = t;
    }
  }

  if (found == null) {
    print("Task not found!");
    return;
  }

  stdout.write("Status (pending/completed): ");
  var s = stdin.readLineSync();

  found.status = s;
  await FileDB.saveTasks(tasks);

  print("Task updated!");
}
