//
//  UIBUttonSlyteSet.swift
//  EverythingDesign
//
//  Created by lilfuzzik on 13.01.2023.
//
import UIKit
import SwiftUI

let widths = UIWindow().screen.bounds.width * 0.95

struct largeButtonStyle: ButtonStyle {
    
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: widths, height: 50)
            .background(self.color)
            .foregroundColor(.white)
            .cornerRadius(50)
            .font(.system(size: 17))
    }
}

struct ButtonPress: ViewModifier {
    
    var onPress: () -> Void
    var onRealese: () -> Void
    
    func body(content: Content) -> some View {
        content
            .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged({ _ in
                    onPress()
                })
                .onEnded({ _ in
                    onRealese()
                })
            )
    }
}
