//
//  Language.swift
//  App Language
//
//  Created by Yusuf Saifudin on 19/04/25.
//

enum Language: String, CaseIterable, Identifiable {
    case en
    case id

    var id: String { rawValue }

    var localeIdentifier: String { rawValue }

    var displayName: String {
        switch self {
        case .en:
            return "English"
        case .id:
            return "Indonesia"
        }
    }
}
