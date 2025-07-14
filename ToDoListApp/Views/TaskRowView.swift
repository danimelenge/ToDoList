//
//  TaskRowView.swift
//  ToDoListApp
//
//  Created by Daniel Melenge Rojas on 14/07/25.
//

import SwiftUI

struct TaskRowView: View {
    var task: TaskItem
    var onToggle: () -> Void

    var body: some View {
        HStack {
            Button(action: onToggle) {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(task.isCompleted ? .green : .gray)
            }
            Text(task.title)
                .strikethrough(task.isCompleted)
                .foregroundColor(task.isCompleted ? .gray : .primary)
            Spacer()
        }
        .padding(.vertical, 6)
    }
}
