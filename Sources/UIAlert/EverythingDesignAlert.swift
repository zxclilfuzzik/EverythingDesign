import SwiftUI

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
