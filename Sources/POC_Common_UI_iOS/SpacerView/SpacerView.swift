//
//  SpaceView.swift
//  boilerplate-swiftui-bloc
//
//  Created by @camapblue on 1/9/22.
//

import SwiftUI

public struct SpacerView: View {
    private var width: CGFloat
    private var height: CGFloat
    
    public init(height: CGFloat = 1, width: CGFloat = 1) {
        self.width = width
        self.height = height
    }
    
    public var body: some View {
        Rectangle().fill(Color.clear)
            .frame(width: width, height: height)
    }
}

