//
//  SheetBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 18/12/21.
//

import SwiftUI

struct SheetBootcamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button".uppercased())
                    .foregroundColor(Color.blue)
                    .padding(20)
                    .background(Color.white.cornerRadius(15))
                
                
            }.sheet(isPresented: $showSheet) {
                
            } content: {
                //Do not add conditional logic in sheet (if-else)
                
                SecondScreen(showSheet: $showSheet)
            }


            
            
        }
    }
}


struct SecondScreen : View {
    
    @Binding var showSheet : Bool
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        
        ZStack(alignment : .topLeading){
            Color.orange
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                    Image(systemName:  "xmark")
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .padding(20)
                    .background(Color.orange.cornerRadius(15))
                    .frame(width: 60, height: 60 )
                
                
            }
            
            
                
            

                
            
            
        }
    }
}


struct SheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp()
    }
}
