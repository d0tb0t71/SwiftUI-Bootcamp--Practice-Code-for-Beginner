//
//  AnimationBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 16/12/21.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated : Bool =  false
    
    var body: some View {
        
        VStack{
            
            Button("button".uppercased()){
                
                    isAnimated.toggle()
                
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300, alignment: .center)
                .offset(y : isAnimated ? 300 : 0)
                .animation(.default)
            
            Spacer()
            
        }
        
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
