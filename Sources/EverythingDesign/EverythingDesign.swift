import UIKit

let widths = UIWindow().screen.bounds.width * 0.95
import SwiftUI

public struct EverythingDesign {
    //    public private(set) var text = "Hello, World!"
    
    public init() {}
}

public struct UIAlertText: View {
    
    var color: Color
    var text: String
    
    public init(color: Color, text: String) {
        self._color = color
        self._text = text
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

