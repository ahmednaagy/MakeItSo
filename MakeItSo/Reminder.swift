//
//  Reminder.swift
//  MakeItSo
//
//  Created by Ahmed Nagy on 15/08/2024.
//

import Foundation

struct Reminder: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted = false
}

extension Reminder {
    static let samples = [
        Reminder(title: "Build Sample App", isCompleted: true),
        Reminder(title: "Create Tutorial"),
        Reminder(title: "????"),
        Reminder(title: "PROFIT!")
    ]
}

