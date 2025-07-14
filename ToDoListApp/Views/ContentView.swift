//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Daniel Melenge Rojas on 14/07/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \TaskItem.createdAt, order: .reverse) private var tasks: [TaskItem]
    @State private var viewModel = TaskViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Add new task...", text: $viewModel.newTitle)
                        .textFieldStyle(.roundedBorder)
                    Button {
                        viewModel.addTask(using: modelContext)
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                    }
                    .disabled(viewModel.newTitle.trimmingCharacters(in: .whitespaces).isEmpty)
                }
                .padding()

                List {
                    ForEach(tasks) { task in
                        TaskRowView(task: task) {
                            viewModel.toggleTask(task)
                        }
                    }
                    .onDelete { indexSet in
                        for index in indexSet {
                            let task = tasks[index]
                            viewModel.deleteTask(task, context: modelContext)
                        }
                    }
                }
            }
            .navigationTitle("My Tasks")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: TaskItem.self, inMemory: true)
}
