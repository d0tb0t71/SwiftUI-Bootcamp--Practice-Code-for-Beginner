//
//  AnimationTimingBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 16/12/21.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimation : Bool = false
    
    var body: some View {
        
        VStack(spacing : 10){
            Button("Button"){
                isAnimation.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .frame(width: isAnimation ? 300 : 50, height: 100, alignment: .center)
                .animation(.linear(duration: 1))
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .frame(width: isAnimation ? 300 : 50, height: 100, alignment: .center)
                .animation(.easeIn(duration: 3))
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .frame(width: isAnimation ? 300 : 50, height: 100, alignment: .center)
                .animation(.easeInOut(duration: 5))
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .frame(width: isAnimation ? 300 : 50, height: 100, alignment: .center)
                .animation(.easeOut(duration: 10))
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .frame(width: isAnimation ? 300 : 50, height: 100, alignment: .center)
                .animation(.spring(response: 3.0, dampingFraction: 0.5, blendDuration: 1.0))
            
            
            
        }
        
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
