//
//  BindingBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 16/12/21.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor : Color = Color.red
    @State var buttonColor : Color = Color.white
    @State var textColor : Color = Color.blue
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            ButtonView(backgroundColor: $backgroundColor,buttonColor: $buttonColor,textColor: $textColor)

            
        }
    }
}


struct ButtonView : View {
    
    @Binding var backgroundColor : Color
    @Binding var buttonColor : Color
    @Binding var textColor : Color
    
    var body: some View{
        Button {
            backgroundColor = Color.orange
            buttonColor = Color.blue
            textColor = Color.white
        } label: {
            Text("Button")
                .padding()
                .foregroundColor(textColor)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
    
}


struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
