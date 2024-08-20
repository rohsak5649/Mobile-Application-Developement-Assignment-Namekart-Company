//
//  ToDoViewModel.swift
//  ToDoListApp
//
//  Created by Rohan Sakhare on 20/08/24.
//

import Foundation
import Combine

class ToDoViewModel: ObservableObject {
    
    @Published var toDoItems: [ToDoItem] = []

    
    private let storageKey = "ToDoItems"

    
    init() {
        loadTasks()
    }

    
    func addTask(title: String, dueDate: Date) {
        let newTask = ToDoItem(title: title, dueDate: dueDate)
        toDoItems.append(newTask)
        saveTasks()
    }

    
    func deleteTask(at indexSet: IndexSet) {
        toDoItems.remove(atOffsets: indexSet)
        saveTasks()
    }

   
    func toggleCompletion(for item: ToDoItem) {
        if let index = toDoItems.firstIndex(where: { $0.id == item.id }) {
            toDoItems[index].isCompleted.toggle()
            saveTasks()
        }
    }

    
    func saveTasks() {
       
        if let encodedData = try? JSONEncoder().encode(toDoItems) {
            UserDefaults.standard.set(encodedData, forKey: storageKey)
        }
    }

    
    func loadTasks() {
        if let data = UserDefaults.standard.data(forKey: storageKey),
           let decodedTasks = try? JSONDecoder().decode([ToDoItem].self, from: data) {
            toDoItems = decodedTasks
        }
    }
}
