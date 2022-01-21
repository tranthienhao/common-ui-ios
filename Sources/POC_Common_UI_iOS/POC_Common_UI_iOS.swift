
import SwiftUI
import POC_Storybook

public struct CommonUIStorybook: View {
    public init() {}
    
    public var body: some View {
        StorybookView(stories: [
            Story("Avatar View") { AnyView(AvatarViewStory()) },
            Story("Button View") { AnyView(ButtonViewStory()) }
        ])
    }
}
