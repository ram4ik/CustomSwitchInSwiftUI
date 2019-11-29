//
//  ContentView.swift
//  CustomSwitchInSwiftUI
//
//  Created by Ramill Ibragimov on 29.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct Switch: View {
    @Binding var state: Bool
    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(state ? .gray : .green)
                .frame(width: 120, height: 45)
                .padding()
                .layoutPriority(1)
                
            HStack {
                if state {
                    Spacer()
                }

                Capsule()
                    .foregroundColor(.white)
                    .frame(width: 55, height: 55)
                
                if !state {
                    Spacer()
                }
            }
        }
        .animation(.spring())
        .onTapGesture {
            self.state.toggle()
        }
    }
}

struct ContentView: View {
    @State var isOn = false
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            Switch(state: $isOn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
