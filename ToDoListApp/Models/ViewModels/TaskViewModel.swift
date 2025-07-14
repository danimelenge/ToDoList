//
//  TaskViewModel.swift
//  ToDoListApp
//
//  Created by Daniel Melenge Rojas on 14/07/25.
//

import Foundation
import SwiftData

@Observable
class TaskViewModel {
    var newTitle: String = ""

    func addTask(using context: ModelContext) {
        guard !newTitle.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        let task = TaskItem(title: newTitle)
        context.insert(task)
        newTitle = ""
    }

    func toggleTask(_ task: TaskItem) {
        task.isCompleted.toggle()
    }

    func deleteTask(_ task: TaskItem, context: ModelContext) {
        context.delete(task)
    }
}
