//
//  AddReminderView.swift
//  MakeItSo
//
//  Created by Ahmed Nagy on 22/08/2024.
//

import SwiftUI

struct AddReminderView: View {

    @State private var reminder = Reminder(title: "")

    var body: some View {
        NavigationStack {
            Form {
                TextField("Add reminder…", text: $reminder.title)
            }
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button(action: {
                        print("Test…")
                    }) {
                        Text("Add")
                    }
                }
            }
        }
    }
}

#Preview {
    AddReminderView()
}
