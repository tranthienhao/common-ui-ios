//
//  SpaceView.swift
//  boilerplate-swiftui-bloc
//
//  Created by @camapblue on 1/9/22.
//

import SwiftUI

public struct SpacerView: View {
    public var width: CGFloat = 1
    public var height: CGFloat = 1
    
    public var body: some View {
        Rectangle().fill(Color.clear)
            .frame(width: width, height: height)
    }
}

