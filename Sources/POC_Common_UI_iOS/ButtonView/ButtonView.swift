//
//  ButtonView.swift
//  boilerplate-swiftui-bloc
//
//  Created by @camapblue on 1/9/22.
//

import SwiftUI

public struct ButtonView: View {
    private var title: String
    private var backgroundColor: Color
    private var highlightColor: Color
    private var disabledColor: Color
    private var textSize: CGFloat
    private var textColor: Color
    
    private var cornerRadius: CGFloat
    private var border: Color?
    private var width: CGFloat?
    private var height: CGFloat
    private var padding: EdgeInsets?
    private var disabled: Bool = false
    private var action: () -> Void
    
    @SwiftUI.State private var isPressed = false
    
    public init(
        title: String,
        backgroundColor: Color = Color.primaryButtonColor,
        highlightColor: Color = Color.primaryHighlightColor,
        disabledColor: Color = Color.primaryDisableColor,
        textSize: CGFloat = 17,
        textColor: Color = Color.primaryTextColor,
        cornerRadius: CGFloat = 8,
        border: Color? = nil,
        width: CGFloat?,
        height: CGFloat = 44,
        padding: EdgeInsets?,
        disabled: Bool = false,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.highlightColor = highlightColor
        self.disabledColor = disabledColor
        self.textSize = textSize
        self.textColor = textColor
        self.cornerRadius = cornerRadius
        self.border = border
        self.width = width
        self.height = height
        self.padding = padding
        self.disabled = disabled
        self.action = action
    }
    
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

