//
//  ButtonView.swift
//  boilerplate-swiftui-bloc
//
//  Created by @camapblue on 1/9/22.
//

import SwiftUI

public struct ButtonView: View {
    public var title: String
    public var backgroundColor: Color = Color.primaryButtonColor
    public var highlightColor: Color = Color.primaryHighlightColor
    public var disabledColor: Color = Color.primaryDisableColor
    public var textSize: CGFloat = 17
    public var textColor: Color = Color.primaryTextColor
    
    public var cornerRadius: CGFloat = 8
    public var border: Color?
    public var width: CGFloat?
    public var height: CGFloat = 44
    public var padding: EdgeInsets?
    public var disabled: Bool = false
    public var action: () -> Void
    
    @SwiftUI.State private var isPressed = false
    
    public var body: some View {
        ZStack {
            ZStack {
                Text(title)
                    .primaryBold(
                        fontSize: textSize,
                        color: textColor.opacity(disabled ? 0.5 : 1)
                    )
                    
            }
            .if (padding != nil) { view in
                view.padding(padding!)
            }
            .if (padding == nil) { view in
                view.frame(maxWidth: width ?? .infinity)
            }
            .frame(height: height, alignment: .center)
            .if (border != nil && !isPressed) { view in
                view.overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(border!, lineWidth: 1)
                        .allowsHitTesting(false)
                        .disabled(true)
                )
            }
            .background(
                disabled ? disabledColor
                    : isPressed ? highlightColor : backgroundColor
            )
            .cornerRadius(cornerRadius)
        }
        .if(!disabled) { view in
            view.simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        isPressed = true
                    }
                    .onEnded { _ in
                        isPressed = false
                        action()
                    }
            )
        }
    }
}

public extension ButtonView {
    static func primary(_ title: String, width: CGFloat? = nil, padding: EdgeInsets? = nil, disabled: Bool = false, action: @escaping () -> Void) -> ButtonView {
        return ButtonView(title: title, width: width, padding: padding, disabled: disabled, action: action)
    }
    
    static func secondary(_ title: String, width: CGFloat? = nil, padding: EdgeInsets? = nil, disabled: Bool = false, action: @escaping () -> Void) -> ButtonView {
        return ButtonView(
            title: title,
            backgroundColor: Color.gray.opacity(0),
            highlightColor: Color.secondaryButtonColor,
            border: Color.borderButtonColor,
            width: width,
            padding: padding,
            disabled: disabled,
            action: action
        )
    }
}

