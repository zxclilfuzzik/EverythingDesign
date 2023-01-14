import SwiftUI

public struct UIAlertText: View {
    
    var color: Color = .red
    var text: String
    
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
