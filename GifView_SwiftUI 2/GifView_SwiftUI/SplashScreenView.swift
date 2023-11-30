//
//  SplashScreenView.swift
//  GifView_SwiftUI
//
//  Created by Bayan on 14/05/1445 AH.
//

import SwiftUI

struct SplashScreenView: View {
@State var isActive : Bool = false
@State private var size = 0.9
@State private var opacity = 0.6

// Customise your SplashScreen here
var body: some View {
    if isActive {
        ContentView()
    } else {
        VStack {
           VStack {
                GifImage("logo2")
                   // .font(.system(size: 80))
                   // .foregroundColor(.red)
                   .padding(.top,30.0)
                Text("Shaiki")
                    .font(Font.custom("Baskerville-Bold", size: 36))
                    .fontWeight(.bold)
                    .foregroundColor(.white.opacity(0.80))
                    .padding(.bottom, 300.0)
           }
            .scaleEffect(size)
            .opacity(opacity)
         .background(Color("Color"))
         .edgesIgnoringSafeArea(.all)
            .onAppear {
                withAnimation(.easeIn(duration: 1.5)) {
                    self.size = 1.0
                    self.opacity = 1.00
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                withAnimation {
                    self.isActive = true
                }
                          }
        }
    }
}
}

#Preview {
    SplashScreenView()
}
