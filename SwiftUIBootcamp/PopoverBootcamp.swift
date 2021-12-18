//
//  PopoverBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 18/12/21.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen : Bool = false
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            
            VStack{
                Button("BUTTON"){
                    
                    showNewScreen.toggle()
                    
                }.font(.largeTitle)
                    .foregroundColor(Color.black)
                    
                Spacer()
                
                //-----Method-1-----
//
//                    .sheet(isPresented: $showNewScreen) {
//
//                    } content: {
//                        NewScreen()
//                    }
                
                //-----Method-2-----
                
//                if(showNewScreen){
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
                
                //-----Method- 3-----
                
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top,100)
                    .offset(y : showNewScreen ? 0 : UIScreen.main.bounds.height )
                    .animation(.spring())

                
                
            }
            
        }
    }
}


struct NewScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    
    var body: some View{
        
        ZStack(alignment : .topLeading){
            Color.blue
                .ignoresSafeArea()
            
            Button {
                
                //-----Method-1-----
                //presentationMode.wrappedValue.dismiss()
                
                //-----Method-2-----
                showNewScreen.toggle()
                
                
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding(15)
            }

            
            
        }
        
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
