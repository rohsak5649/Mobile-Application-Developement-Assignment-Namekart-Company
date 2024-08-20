//
//  AddTaskView.swift
//  ToDoListApp
//
//  Created by Rohan Sakhare on 20/08/24.
//

import SwiftUI

struct AddTaskView: View {
    @ObservedObject var viewModel: ToDoViewModel
    @State private var taskTitle = ""
    @State private var dueDate = Date()

    var body: some View {
        NavigationView {
            Form {
                TextField("Task Title", text: $taskTitle)
                DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
            }
            .navigationTitle("New Task")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        viewModel.addTask(title: taskTitle, dueDate: dueDate)
                       
                    }
                }
            }
        }
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView(viewModel: ToDoViewModel())
    }
}
