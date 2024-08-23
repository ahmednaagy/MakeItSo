//
//  ContentView.swift
//  MakeItSo
//
//  Created by Ahmed Nagy on 15/08/2024.
//

import SwiftUI

struct ContentView: View {

    @State private var reminders = Reminder.samples
    @State private var isAddReminderDialogPresented = false

    private func presentAddReminderView() {
        isAddReminderDialogPresented.toggle()
    }

    var body: some View {
        List($reminders) { $reminder in
            HStack {
                Image(systemName: reminder.isCompleted
                      ? "largecircle.fill.circle"
                      : "circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .onTapGesture {
                    reminder.isCompleted.toggle()
                }
                Text(reminder.title)
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button(action: presentAddReminderView) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("New Reminder")
                    }
                }
                Spacer()
            }
        }
        .sheet(isPresented: $isAddReminderDialogPresented) {
            AddReminderView { reminder in
                reminders.append(reminder)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
            .navigationTitle("Reminders")
    }
}
