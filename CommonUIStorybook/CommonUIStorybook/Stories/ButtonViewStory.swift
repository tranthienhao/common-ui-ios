//
//  ButtonView.swift
//  
//
//  Created by Hao Tran Thien on 21/01/2022.
//

import SwiftUI
import POC_Common_UI_iOS

struct ButtonViewStory: View {
    var body: some View {
        VStack {
            SpacerView(height: 128)
            ButtonView.primary("Primary Button") {
                print("Primary Action Now!")
            }
            .padding(.horizontal, 32)
            SpacerView(height: 128)
            ButtonView.primary("Padding Button", padding: EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16)) {
                print("Padding Action Now!")
            }
            SpacerView(height: 128)
            ButtonView.secondary("Secondary Button") {
                print("Secondary Action Now!")
            }
            .padding(.horizontal, 32)
            SpacerView(height: 128)
            ButtonView.secondary("Secondary Padding", padding: EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16)) {
                print("Secondary Padding Now!")
            }
            SpacerView(height: 128)
        }
    }
}
