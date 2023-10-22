//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Imam Robani on 27/09/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
