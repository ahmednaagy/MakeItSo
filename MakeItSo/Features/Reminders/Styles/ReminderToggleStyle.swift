//
//  ReminderToggleStyle.swift
//  MakeItSo
//
//  Created by Ahmed Nagy on 15/09/2024.
//

import SwiftUI

struct ReminderToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn
                  ? "largecircle.fill.circle"
                  : "circle")
            .imageScale(.large)
            .foregroundColor(configuration.isOn ? .accentColor : .gray)
            .onTapGesture {
                configuration.isOn.toggle()
            }
            configuration.label
        }
    }
}

extension ToggleStyle where Self == ReminderToggleStyle {
  static var reminder: ReminderToggleStyle {
    ReminderToggleStyle()
  }
}

struct ToggleContainer: View {

    @State var isOn = false

    var body: some View {
        Toggle(isOn: $isOn, label: {
            Text("Hello")
        })
        .toggleStyle(.reminder)
    }
}

#Preview {
    ToggleContainer()
}
