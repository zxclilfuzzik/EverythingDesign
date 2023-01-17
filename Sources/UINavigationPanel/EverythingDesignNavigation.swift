//
//  UINavigationPanek.swift
//  EverythingDesign
//
//  Created by lilfuzzik on 13.01.2023.
//

import SwiftUI

public struct UINavigationPanel: View {
    
    var title: String
    var icon: String
    
    public init(title: String, icon: String) {
        self.title = title
        self.icon = icon
    }
    
    public var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            HStack(spacing: 0) {
                Text(title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: icon)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                })
            }
        }
        .frame(height: 105)
        .shadow(radius: 4)
    }
}













//
//public struct UINavSearchablePanel: ViewModifier {
//
//    var title: String
//    var searchAuery: Binding<String>
//    var searchPromt: String = "Search"
//    var icon: String = "plus"
//
//    public init(title: String, searchAuery: Binding<String>, searchPromt: String, icon: String) {
//        self.title = title
//        self.searchAuery = searchAuery
//        self.searchPromt = searchPromt
//        self.icon = icon
//    }
//
//    public func body(content: Content) -> some View {
//        content
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    HStack(spacing: 0) {
//                        Text(title)
//                            .foregroundColor(.white)
//                            .font(.largeTitle)
//                            .bold()
//                        Spacer()
//                        Button(action: {}, label: {Image(systemName: icon).foregroundColor(.white)})
//                    }
//                    .padding(.bottom)
//                }
//            }
//            .toolbarBackground(Color(.black), for: .navigationBar)
//            .toolbarBackground(.visible, for: .navigationBar)
//            .searchable(text: searchAuery, prompt: searchPromt)
//    }
//}
//
//public struct UINavPanel: ViewModifier {
//
//    var title: String
//    var icon: String = "plus"
//
//    public init(title: String, icon: String) {
//        self.title = title
//        self.icon = icon
//    }
//
//    public func body(content: Content) -> some View {
//        content
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    HStack(spacing: 0) {
//                        Text(title)
//                            .foregroundColor(.white)
//                            .font(.largeTitle)
//                            .bold()
//                        Spacer()
//                        Button(action: {}, label: {Image(systemName: icon).foregroundColor(.white)})
//                    }
//                    .padding(.bottom)
//                }
//            }
//            .toolbarBackground(Color(.black), for: .navigationBar)
//            .toolbarBackground(.visible, for: .navigationBar)
//    }
//}
//
//public struct UINavBackButtonPanel: ViewModifier {
//
//    var action: () -> Void
//    var title: String
//
//    public init(action: @escaping () -> Void, title: String) {
//        self.action = action
//        self.title = title
//    }
//
//    public func body(content: Content) -> some View {
//        content
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    HStack {
//                        Button(action: self.action) {
//                            Image(systemName: "chevron.left")
//                                .foregroundColor(.white)
//                                .font(.system(size: 20))
//                        }
//                        Spacer()
//                        Text(title)
//                            .foregroundColor(.white)
//                            .fontWeight(.medium)
//                            .font(.system(size: 20))
//                        Spacer()
//                        Image(systemName: "chevron.left")
//                            .foregroundColor(.clear)
//                            .font(.system(size: 20))
//                    }
//                    .padding(.top, 6)
//                }
//            }
//    }
//}
