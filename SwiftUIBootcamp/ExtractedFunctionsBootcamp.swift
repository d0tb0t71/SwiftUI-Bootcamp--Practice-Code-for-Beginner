//
//  ExtractedFunctionsBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 16/12/21.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var title : String = "Title"
    
    var body: some View {
        
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            
            
            contentLayer
            
            
        }
        
    }
    
    var contentLayer : some View {
        VStack(spacing : 20){
            
            Text(title)
                .font(.largeTitle)
            
            Button {
                
                buttonPressed()
                
            } label: {
                Text("Button")
                    .font(.system(size: 20))
                    .padding(20)
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(15)
                    
            }

            
            
            
            
        }
    }
    
    func buttonPressed(){
        title = "Title Changed"
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
