//
//  ContentView.swift
//  MakeItSo
//
//  Created by Ahmed Nagy on 15/08/2024.
//

import SwiftUI

struct ContentView: View {

    @State
    private var reminders = Reminder.samples

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
    }
}

#Preview {
    ContentView()
}
