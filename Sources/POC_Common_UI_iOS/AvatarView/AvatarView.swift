//
//  AvatarView.swift
//  boilerplate-swiftui-bloc
//
//  Created by @camapblue on 12/31/21.
//

import Kingfisher
import SwiftUI

public struct AvatarView: View {
    public var avatar: String
    public var size: CGFloat
    
    public var body: some View {
        ZStack {
            KFImage.url(URL(string: avatar)!)
                .placeholder { Image("avatar_placeholder").resizable() }
                .fade(duration: 0.5)
                .resizing(referenceSize: CGSize(width: size, height: size), mode: .aspectFit)
                .clipShape(Circle())
        }
        .frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
