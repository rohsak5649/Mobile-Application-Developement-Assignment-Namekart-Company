//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Rohan Sakhare on 20/08/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ToDoViewModel()
    @State private var showingAddTaskView = false

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.toDoItems.sorted { $0.dueDate < $1.dueDate }) { item in
                    HStack {
                        Text(item.title)
                            .strikethrough(item.isCompleted)
                        Spacer()
                        Text("\(item.dueDate, formatter: dateFormatter)")
                            .foregroundColor(.gray)
                        Button(action: {
                            viewModel.toggleCompletion(for: item)
                        }) {
                            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                        }
                    }
                }
                .onDelete(perform: viewModel.deleteTask)
            }
            .navigationTitle("To-Do List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showingAddTaskView = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddTaskView) {
                AddTaskView(viewModel: viewModel)
            }
        }
    }
}

private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .none
    return formatter
}()


#Preview {
    ContentView()
}
