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
    
    public var body: some View {
        Button(action: self.action, label: {
            Text(self.text)
                .foregroundColor(textColor)
        })
        .buttonStyle(largeButtonStyle(color: self.color))
    }
}

public struct UITextButton: View {
    
    var action: () -> Void
    var text: String
    var color: Color = .white
    
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
