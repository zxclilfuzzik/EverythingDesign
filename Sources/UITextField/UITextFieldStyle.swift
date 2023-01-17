import SwiftUI
import UIKit


let widths = UIWindow().screen.bounds.width * 0.95

struct LargeTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.leading)
            .frame(width: widths, height: 50)
            .background(Color("FieldColor"))
            .cornerRadius(15)
            
    }
}
