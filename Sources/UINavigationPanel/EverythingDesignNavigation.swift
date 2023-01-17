//
//  UINavigationPanek.swift
//  EverythingDesign
//
//  Created by lilfuzzik on 13.01.2023.
//

import SwiftUI

public struct UINavigationPanel: View {
    
    var title: String
    var bgColor: String
    var icon: String
    var iconTwo: String
    
    public init(title: String, icon: String, iconTwo: String, bgColor: String) {
        self.title = title
        self.icon = icon
        self.iconTwo = iconTwo
        self.bgColor = bgColor
    }
    
    public var body: some View {
        ZStack {
            Color(bgColor)
                .ignoresSafeArea()
            HStack(spacing: 0) {
                Text(title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                HStack(spacing: 20) {
                    Button(action: {}, label: {
                        Image(systemName: iconTwo)
                            .font(.system(size: 21))
                            .foregroundColor(.white)
                    })
                    Button(action: {}, label: {
                        Image(systemName: icon)
                            .font(.system(size: 21))
                            .foregroundColor(.white)
                    })
                }
            }
            .padding(.horizontal, 16)
        }
        .frame(height: 105)
        .shadow(color: .black.opacity(0.6), radius: 20)
    }
}


public struct UINavPanelBackButton: View {
    
    var title: String
    var action: () -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        HStack {
            Button(action: self.action) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            }
            Spacer()
            Text(title)
                .foregroundColor(.white)
                .fontWeight(.medium)
                .font(.system(size: 20))
            Spacer()
            Image(systemName: "chevron.left")
                .foregroundColor(.clear)
                .font(.system(size: 20))
        }
//        .padding(.top, 6)
    }
}
