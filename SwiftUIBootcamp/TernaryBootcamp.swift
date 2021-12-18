//
//  TernaryBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 16/12/21.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var color : Bool = false
    
    var body: some View {
        
        VStack{
            Button("Button") {
                color.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25)
                .fill(color == false ? Color.blue : Color.purple)
                .frame(width: 200, height: 150, alignment: .center)
            
        }
        
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
