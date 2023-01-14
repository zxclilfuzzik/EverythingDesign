//
//  UINavigationPanek.swift
//  EverythingDesign
//
//  Created by lilfuzzik on 13.01.2023.
//

import SwiftUI

public struct UINavSearchablePanel: ViewModifier {
    
    var title: String
    var searchAuery: Binding<String>
    var searchPromt: String = "Search"
    var icon: String = "plus"
    
    public func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 0) {
                        Text(title)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        Button(action: {}, label: {Image(systemName: icon).foregroundColor(.white)})
                    }
                    .padding(.bottom)
                }
            }
            .toolbarBackground(Color(.black), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .searchable(text: searchAuery, prompt: searchPromt)
    }
}

public struct UINavPanel: ViewModifier {
    
    var title: String
    var icon: String = "plus"
    
    public func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 0) {
                        Text(title)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        Button(action: {}, label: {Image(systemName: icon).foregroundColor(.white)})
                    }
                    .padding(.bottom)
                }
            }
            .toolbarBackground(Color(.black), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
    }
}

public struct UINavBackButtonPanel: ViewModifier {
    
    var action: () -> Void
    var title: String
    
    public func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .principal) {
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
                    .padding(.top, 6)
                }
            }
    }
}
