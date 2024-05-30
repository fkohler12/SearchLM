//
//  Constants.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 3/13/24.
//

import SwiftUI

extension Color{
    static let maroon = Color("Color")
    static let darkBlack = Color("Negro")
    static let blanco = Color("Blanco")
}

struct Constants{
    static let largeFont: Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 50) ?? UIFont.systemFont(ofSize: 50))
    
    static let mediumFont: Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 34) ?? UIFont.systemFont(ofSize: 34))
    
    static let smallFont: Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 16) ?? UIFont.systemFont(ofSize: 16))
}
