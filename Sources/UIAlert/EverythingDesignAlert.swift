import SwiftUI
import UIKit


let widths = UIWindow().screen.bounds.width * 0.95


public struct UIAlertText: View {
    
    var color: Color
    var text: String
    
    public init(color: Color, text: String) {
        self.color = color
        self.text = text
    }
    
    public var body: some View {
        HStack {
            Text(self.text)
                .foregroundColor(self.color)
                .fontWeight(.medium)
                .font(.system(size: 10))
            Spacer()
        }
    }
}


//Adding test UIAlert
public struct UIAlertWindow: View {
    
    var text: String
    var btnText: String
    var action: () -> Void
    var color: Color
    
    public init(text: String, btnText: String, action: @escaping () -> Void, color: Color) {
        self.text = text
        self.btnText = btnText
        self.action = action
        self.color = color
    }
    
    public var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 0) {
                Text(text)
                Divider()
                    .frame(width: 269)
                    .foregroundColor(.gray)
                Button(action: action) {
                    Text(btnText)
                        .bold()
                        .foregroundColor(color)
                }
            }
        }
        .frame(width: widths, height: 178)
        .cornerRadius(20)
    }
    
}
// // //
