import SwiftUI

public struct UITextField: View {
    
    var title: String
    var text: Binding<String>
    var isSecure: Bool = false
    
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
