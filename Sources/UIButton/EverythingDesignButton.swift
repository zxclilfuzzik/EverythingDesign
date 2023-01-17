//
//  UIButtonSet.swift
//  EverythingDesign
//
//  Created by lilfuzzik on 13.01.2023.
//

import SwiftUI

public struct UILargeButton: View {
    
    var text: String = "Text"
    var color: Color = .accentColor
    var textColor: Color = .white
    var action: () -> Void = {}
    
    public init(text: String, color: Color, textColor: Color, action: @escaping () -> Void) {
        self.text = text
        self.color = color
        self.textColor = textColor
        self.action = action
    }
    
    public var body: some View {
        Button(action: self.action, label: {
            Text(self.text)
                .foregroundColor(textColor)
        })
        .buttonStyle(largeButtonStyle(color: self.color))
    }
}
// // // // // //

public struct UILargeButtonVKID: View {
    
    var action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public var body: some View {
        Button(action: self.action) {
            Text("Войти через VK ID")
                .foregroundColor(.black)
        }
        .buttonStyle(largeButtonStyle(color: .white))
    }
}
// // // // // //

public struct UITextButton: View {
    
    var action: () -> Void
    var text: String
    var color: Color = .white
    
    public init(action: @escaping () -> Void, text: String, color: Color) {
        self.action = action
        self.text = text
        self.color = color
    }
    
    public var body: some View {
        Button(action: action) {
            Text(text)
                .bold()
                .foregroundColor(color)
        }
    }
}

public struct UILargeSearchButton: View {
    
    var text: String = "Text"
    var color: Color = .accentColor
    var action: () -> Void = {}
    
    public init(text: String, color: Color, action: @escaping () -> Void) {
        self.text = text
        self.color = color
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            ZStack {
                Color.white
                HStack {
                    Text("search")
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.leading)
            }
            .frame(width: widths, height: 40)
            .cornerRadius(15)
        }
    }
}
