//
//  String+Localization.swift
//  App Language
//
//  Created by Yusuf Saifudin on 19/04/25.
//

import SwiftUI

extension String {
    var localized: LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
