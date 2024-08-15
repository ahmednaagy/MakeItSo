//
//  Reminder.swift
//  MakeItSo
//
//  Created by Ahmed Nagy on 15/08/2024.
//

struct Reminder {
    var title: String
    var isCompleted = false
}

extension Reminder {
    static let samples = [
        Reminder(title: "Build Sample App", isCompleted: false),
        Reminder(title: "Create Tutorial"),
        Reminder(title: "????"),
        Reminder(title: "PROFIT!")
    ]
}

