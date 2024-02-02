//
//  ContentView.swift
//  bulleseys_15
//
//  Created by Deelipkumar Darvesh on 1/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisaible : Bool = false
    @State private var sliderValue : Double = 50.0
    var body: some View {
        VStack {
            // ctl+ cmd+space for moji
            // //            funt size  https://developer.apple.com/design/human-interface-guidelines/typography#Specifications
            Text("🎯🎯🎯 \n Put the bulessa eyes as close as you can")
                .textCase(.uppercase)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
                .kerning(2).padding(4)
            
            
            Text("89").kerning(-1).font(.largeTitle).fontWeight(.black)
            HStack {
                Text("1").bold().font(.body)
                Slider(value: $sliderValue, in :1.0...100.0)
                
                Text("100").bold().font(.body)
                
                
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("hello Krishna")
                alertIsVisaible = true
            }
            .alert("Hello there ",
                   isPresented: $alertIsVisaible,
                   actions: {
                Button("Assome " ) {
                    print("Alert closed")
                }
            },
                   
                   message: {
                var roundedValue: Int = Int(sliderValue.rounded())
                Text(" your score sliderValue= \(sliderValue) roundedValue= \(roundedValue)")
            }
            )
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
