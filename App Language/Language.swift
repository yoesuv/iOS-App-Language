//
//  Language.swift
//  App Language
//
//  Created by Yusuf Saifudin on 19/04/25.
//

enum Language: String, CaseIterable, Identifiable {
    case english = "English"
    case indonesian = "Indonesia"
    
    var id: String { self.rawValue }
}
