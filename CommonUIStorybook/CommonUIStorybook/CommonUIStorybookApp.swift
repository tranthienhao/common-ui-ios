//
//  CommonUIStorybookApp.swift
//  CommonUIStorybook
//
//  Created by Hao Tran Thien on 24/01/2022.
//

import SwiftUI

@main
struct CommonUIStorybookApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                StorybookView(stories: [
                    Story("Avatar View") { AnyView(AvatarViewStory()) },
                    Story("Button View") { AnyView(ButtonViewStory()) }
                ])
            }
        }
    }
}
