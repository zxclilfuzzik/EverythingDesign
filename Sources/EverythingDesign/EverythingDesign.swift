import SwiftUI
import UIKit

public struct EverythingDesign {
    public init() {}
}

let widths = UIWindow().screen.bounds.width * 0.95

public struct UINavigationPanel: View {
    
    var title: String
    var icon: String
    
    public init(title: String, icon: String) {
        self.title = title
        self.icon = icon
    }
    
    public var body: some View {
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
        .shadow(radius: 4)
    }
}
