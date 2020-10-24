//
//  LogOutButton.swift
//  StateAndDataFlowApp
//
//  Created by ddyack on 24.10.2020.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var user: UserManager
    var body: some View {
        Button(action: user.delete ) {
            Text("LogOut")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.black, lineWidth: 4)
        )
        .offset(x:0, y:50)
    }
}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton().environmentObject(UserManager())
    }
}



