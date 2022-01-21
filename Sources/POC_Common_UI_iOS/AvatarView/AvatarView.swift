//
//  AvatarView.swift
//  boilerplate-swiftui-bloc
//
//  Created by @camapblue on 12/31/21.
//

import Kingfisher
import SwiftUI

public struct AvatarView: View {
    private let avatar: String
    private let size: CGFloat
    
    public init(avatar: String, size: CGFloat) {
        self.avatar = avatar
        self.size = size
    }
    
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
