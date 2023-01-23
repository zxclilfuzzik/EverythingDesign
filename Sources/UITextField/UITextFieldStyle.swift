import SwiftUI
import UIKit


let widths = UIWindow().screen.bounds.width * 0.9

public struct LargeTextField: TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.leading)
            .frame(width: widths, height: 50)
            .background(Color("FieldColor"))
            .cornerRadius(15)
            
    }
}

