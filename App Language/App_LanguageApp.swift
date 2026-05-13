//
//  App_LanguageApp.swift
//  App Language
//
//  Created by Yusuf Saifudin on 19/04/25.
//

import SwiftUI

@main
struct App_LanguageApp: App {
    
    @StateObject private var appLanguageState = AppLanguageState()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(appLanguageState)
                .environment(\.locale, Locale(identifier: appLanguageState.language.localeIdentifier))
        }
    }
}
