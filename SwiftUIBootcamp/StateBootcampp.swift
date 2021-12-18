//
//  StateBootcampp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 16/12/21.
//

import SwiftUI

struct StateBootcampp: View {
    
    @State var count : Int  = 0
    
    var body: some View {
        
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing : 20){
                
                Text("Title Goes Here")
                
                Text("Count : \(count)")
                
                HStack(spacing : 20){
                    
                    Button {
                        count-=1
                    } label: {
                        Text("Decrease")
                    }
                    
                    Button {
                        count+=1
                    } label: {
                        Text("Increase")
                    }

                    
                }
                
            }.foregroundColor(Color.white)
            
            
        }
        
    }
}

struct StateBootcampp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcampp()
    }
}
