import SwiftUI
import UIKit

let widths = UIWindow().screen.bounds.width * 0.9

public struct UITextField: View {
    
    var title: String
    var text: Binding<String>
    var isSecure: Bool = false
    
    public init(title: String, text: Binding<String>, isSecure: Bool) {
        self.title = title
        self.text = text
        self.isSecure = isSecure
    }
    
    public var body: some View {
        if !isSecure {
            TextField(self.title, text: self.text)
                .textFieldStyle(LargeTextField())
                .autocorrectionDisabled()
        } else {
            SecureField(self.title, text: self.text)
                .textFieldStyle(LargeTextField())
                .autocorrectionDisabled()
        }
    }
}

public struct UITextFieldNoFocused: View {
    
    var title: String
    
    public init(title: String) {
        self.title = title
    }
    
    public var body: some View {
        ZStack {
            Color("FieldColor")
            HStack(spacing: 0) {
                Text(title)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                Spacer()
            }
        }
        .frame(width: widths, height: 50)
        .cornerRadius(15)
    }
}


///
///
///
///

public struct LargeTextField: TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.leading)
            .frame(width: widths, height: 50)
            .background(Color("FieldColor"))
            .cornerRadius(15)
            
    }
}
