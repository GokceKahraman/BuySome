//
//  BuySomeApp.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 8.12.2022.
//

import SwiftUI

@main
struct BuySomeApp: App {
    
    @StateObject var sheetManager = SheetManager()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(sheetManager)
        }
    }
}
