//
//  ScrollViewBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 13/12/21.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        LazyHStack{
                            ForEach(0..<20) { index2 in
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(index % 2 == 0 ?.white : .blue)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                        
                        
                        
                    }
                    
                    
                    
                    
                }
            }
        }
        
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
