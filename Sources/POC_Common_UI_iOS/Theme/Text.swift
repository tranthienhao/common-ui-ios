//
//  File.swift
//  
//
//  Created by Hao Tran Thien on 21/01/2022.
//

import SwiftUI

public extension Text {
    func primaryRegular(fontSize: CGFloat =  13, color: Color = Color.primaryTextColor) -> Text {
        return self.font(
                .custom(DesignTokens.fontFamilyPrimary, size: fontSize)
            )
            .foregroundColor(color)
    }
    
    func primaryBold(fontSize: CGFloat =  13, color: Color = Color.primaryTextColor) -> Text {
        return self.primaryRegular(fontSize: fontSize, color: color)
            .fontWeight(.bold)
    }
    
    func secondaryRegular(fontSize: CGFloat =  13, color: Color = Color.primaryTextColor) -> Text {
        return self.font(
                .custom(DesignTokens.fontFamilySecondary, size: fontSize)
            )
            .foregroundColor(color)
    }
}
