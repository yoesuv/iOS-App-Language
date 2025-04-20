//
//  AppLanguageState.swift
//  App Language
//
//  Created by Yusuf Saifudin on 20/04/25.
//

import SwiftUI

class AppLanguageState: ObservableObject {
    
    @Published var language: Language = .en
    
}
