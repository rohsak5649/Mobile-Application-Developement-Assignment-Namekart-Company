//
//  ToDoItem.swift
//  ToDoListApp
//
//  Created by Rohan Sakhare on 20/08/24.
//

import Foundation


struct ToDoItem: Identifiable, Codable {
    
    var id = UUID()
    
    
    var title: String
    
    
    var dueDate: Date
    
    
    var isCompleted: Bool = false
}

