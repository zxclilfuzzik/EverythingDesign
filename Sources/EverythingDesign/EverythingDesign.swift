import UIKit
import SwiftUI

let widths = UIWindow().screen.bounds.width * 0.95

public struct EverythingDesign {
    //    public private(set) var text = "Hello, World!"
    
    public init() {}
}

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

