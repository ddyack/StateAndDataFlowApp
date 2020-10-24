//
//  ButtonTimer.swift
//  StateAndDataFlowApp
//
//  Created by ddyack on 24.10.2020.
//

import SwiftUI

struct ButtonTimer: View {
    @ObservedObject var timer: TimeCounter
        
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonTimer_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTimer(timer: TimeCounter())
    }
}


