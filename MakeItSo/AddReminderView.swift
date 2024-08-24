//
//  AddReminderView.swift
//  MakeItSo
//
//  Created by Ahmed Nagy on 22/08/2024.
//

import SwiftUI

struct AddReminderView: View {

    enum FocusableField: Hashable {
        case title
    }

    @State private var reminder = Reminder(title: "")
    @FocusState private var focusedField: FocusableField?
    @Environment(\.dismiss) private var dismiss

    var onCommit: (_ reminder: Reminder) -> Void

    private func commit() {
        onCommit(reminder)
        dismiss()
    }

    private func cancel() {
        dismiss()
    }

    var body: some View {
        NavigationStack {
            Form {
                TextField("Add reminder…", text: $reminder.title)
                    .focused($focusedField, equals: .title)
            }
            .navigationTitle("New Reminder")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(action: cancel, label: {
                        Text("Cancel")
                    })
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button(action: {
                        commit()
                    }) {
                        Text("Add")
                    }
                    .disabled(reminder.title.isEmpty)
                }
            }
            .onAppear {
                focusedField = .title
            }
        }
    }
}

#Preview {
    AddReminderView { reminder in
        print("You added a new reminder titled \(reminder.title)")
    }
}
