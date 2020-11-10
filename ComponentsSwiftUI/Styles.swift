//
//  Styles.swift
//  ComponentsSwiftUI
//
//  Created by Aleksandra Afanasieva on 2020-11-10.
//

import SwiftUI

struct OkButtonStyle: ButtonStyle {
    func makeBody (configuration: Self.Configuration) -> some View{
        configuration.label
            .font(.headline)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .contentShape(Rectangle())
            .foregroundColor(configuration.isPressed ? Color.white.opacity(0.5) : Color.white)
            .listRowBackground(configuration.isPressed ? Color.blue.opacity(0.5) : Color.blue)
    }
}


