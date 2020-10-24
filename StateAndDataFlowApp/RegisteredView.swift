//
//  RegisteredView.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 21.10.2020.
//

import SwiftUI

struct RegisteredView: View {
    @State private var name = ""
    @EnvironmentObject var user: UserManager
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(setColor())
                    .offset(x:-40, y:0)
                    
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(isNotEnouthCharacters())
        }
    }
}

extension RegisteredView {
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister = true
            user.save()
        }
    }
    
    private func isNotEnouthCharacters() -> Bool {
        name.count < 3
    }
    
    private func setColor() -> Color {
        if isNotEnouthCharacters() {
            return .red
        } else {
            return .blue
        }
    }
}

struct RegisteredView_Previews: PreviewProvider {
    static var previews: some View {
        RegisteredView()
            .environmentObject(UserManager())
    }
}


