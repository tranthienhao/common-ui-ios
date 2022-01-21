//
//  Color.swift
//  
//
//  Created by Hao Tran Thien on 21/01/2022.
//

import UIKit
import SwiftUI

public extension UIColor {
    func color() -> Color {
        return Color(self)
    }
}

public extension Color {
    static var primaryButtonColor: Color {
        return DesignTokens.colorBaseOrange.color()
    }
    
    static var primaryHighlightColor: Color {
        return DesignTokens.colorBaseRed.color()
    }
    
    static var primaryDisableColor: Color {
        return DesignTokens.colorBaseGrayLight.color()
    }
    
    static var primaryTextColor: Color {
        return DesignTokens.colorBaseGrayDark.color()
    }
    
    static var borderButtonColor: Color {
        return DesignTokens.colorBaseGrayDark.color()
    }
    
    static var secondaryButtonColor: Color {
        return DesignTokens.colorBaseGrayLight.color()
    }
}
