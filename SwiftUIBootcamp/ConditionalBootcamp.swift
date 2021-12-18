//
//  ConditionalBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 16/12/21.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle : Bool = false
    
    var body: some View {
        VStack{
            
            Button("Circle Button : \(showCircle.description)"){
                showCircle.toggle()
            }
            if showCircle{
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
            }else{
                Rectangle()
                    .frame(width: 100, height: 100, alignment: .center)
            }
            Spacer()
            

            
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
