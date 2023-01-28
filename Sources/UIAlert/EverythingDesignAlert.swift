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
                .font(.system(size: 12))
            Spacer()
        }
    }
}


//Adding test UIAlert
public struct UIAlertWindow: View {
    
    var alertText: String
    
    public init(alertText: String) {
        self.alertText = alertText
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Color.green
                HStack(spacing: 0) {
                    Text(alertText)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .font(.system(size: 15))
//                        .padding(.leading, 22)
                    Spacer()
                }
            }
        }
        .frame(width: widths, height: 70)
        .cornerRadius(15)
    }
}

public struct UIAlertWindowError: View {
    
    var alertText: String
    
    public init(alertText: String) {
        self.alertText = alertText
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Color.red
                HStack(spacing: 0) {
                    Text(alertText)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .font(.system(size: 15))
//                        .padding(.leading, 22)
                    Spacer()
                }
            }
        }
        .frame(width: widths, height: 70)
        .cornerRadius(15)
    }
}
// // //
