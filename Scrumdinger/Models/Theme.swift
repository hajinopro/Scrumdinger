//
//  Theme.swift
//  Scrumdinger
//
//  Created by 하진호 on 2022/05/22.
//

import SwiftUI

enum Theme: String {
    case bubblegum, buttercup, indigo, lavendar, magenta, navy, orange, oxblood, periwinkle, poppy, purple, seafoam, sky, tan, teal, yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavendar, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow:
            return .black
        case .indigo, .magenta, .navy, .oxblood, .purple:
            return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue.capitalized
    }
}