

import SwiftUI

struct ContentView: View {
    
    @State private var text = "Start"
    @State private var red = ColorCircle(color: .red, opacityValue: 0.5)
    @State private var yellow = ColorCircle(color: .yellow, opacityValue: 0.5)
    @State private var green = ColorCircle(color: .green, opacityValue: 0.5)
   
    
    var body: some View {
        ZStack {
            Color(.black)
            .ignoresSafeArea()

            VStack {
                VStack {
                    red
                    yellow
                    green
                }
                .padding(.top, 50)
                Spacer()
        Button(action: {
            changeColor()
        }, label: {
            textDescription
        })
        .padding(.bottom, 50.0)
        .frame(width: 100.0, height: 75.0)
        }
            }
        }
    
    private var textDescription: some View {
        Text(text)
            .font(.title)
            .frame(width: 150.0, height: 60.0)
            .cornerRadius(10)
            .background(.blue)
            .foregroundColor(.white)
    }
    
   
    private func changeColor () {
        if red.opacityValue == 1.0 {
            yellow.opacityValue = 1.0
            red.opacityValue = 0.5
            text = "Next"
        } else if yellow.opacityValue == 1.0 {
            green.opacityValue = 1.0
            yellow.opacityValue = 0.5
            text = "Next"
        } else {
            green.opacityValue = 0.5
            red.opacityValue = 1.0
            text = "Next"
        }
        }
        
    }
        
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
