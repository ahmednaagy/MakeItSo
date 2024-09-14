//
//  RemindersListRowView.swift
//  MakeItSo
//
//  Created by Ahmed Nagy on 15/09/2024.
//

import SwiftUI

struct RemindersListRowView: View {
    @Binding var reminder: Reminder

    var body: some View {
        HStack {
            Image(systemName: reminder.isCompleted ? "largecircle.fill.circle" : "circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .onTapGesture {
                    reminder.isCompleted.toggle()
                }
            Text(reminder.title)
        }
    }
}

// Move PreviewContainer outside the #Preview closure
struct PreviewContainer: View {
    @State var reminder = Reminder.samples[0]

    var body: some View {
        List {
            RemindersListRowView(reminder: $reminder)
        }
        .listStyle(.automatic)
    }
}

#Preview {
    NavigationView {
        PreviewContainer()
            .navigationTitle("Reminders")
    }
}
