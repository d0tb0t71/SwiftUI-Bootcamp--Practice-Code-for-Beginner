//
//  ButtonsBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 15/12/21.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var button : String = "Before Press"
    
    var body: some View {
        
        VStack{
            
            Button(button) {
                self.button = "After Press Button 1"
            }
            .padding()
            
            Button(action: {
                self.button = "After Press Button 2"
            }) {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
            }
            
            
            Button {
                
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName : "heart.fill")
                            .foregroundColor(Color.red)
                            .font(.largeTitle)
                            
                    )
                
                
            }
            
            Button {
                
            } label: {
                Text("Finish".uppercased())
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(
                        Capsule()
                            .fill(.green)
                            .frame(width : 120,height: 60)
                    )
            }.padding(25)

            
        }
        
        
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
