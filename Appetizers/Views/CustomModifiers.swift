//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Imam Robani on 22/10/23.
//

import SwiftUI

struct StandarButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standarButtonStyle() -> some View {
        self.modifier(StandarButtonStyle())
    }
}
