//
//  TransationBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 18/12/21.
//

import SwiftUI

struct TransationBootcamp: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        
        ZStack(alignment : .bottom){
            
            VStack{
                
                Button("Button".uppercased()){
                    showView.toggle()
                }
                
                Spacer()
                
            }
            
            if(showView){
                RoundedRectangle(cornerRadius: 30)
                    .frame(height : UIScreen.main.bounds.height * 0.5 )
                    .transition(.slide)
                    .animation(.easeInOut)
            }
            
            
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}

struct TransationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransationBootcamp()
    }
}
