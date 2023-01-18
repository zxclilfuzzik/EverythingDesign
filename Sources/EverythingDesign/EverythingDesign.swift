import SwiftUI
import UIKit

let widths = UIWindow().screen.bounds.width * 0.95

public struct UITitle: View {
    
    var title: String
    
    public init(title: String) {
        self.title = title
    }
    
    public var body: some View {
        HStack {
            Text(self.title)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: 20))
            Spacer()
        }
    }
}
