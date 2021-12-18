//
//  GridBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 15/12/21.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns : [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
        
    ]
    
    var body: some View {
        
        
        
        ScrollView{
            
            
            Rectangle()
                .fill(.orange)
                .frame(height : 400)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 10, pinnedViews: []) {
                
                Section {
                    ForEach(0..<20) { index in
                    
                        Rectangle()
                            .fill(.blue)
                            .frame(height : 150)
                    }
                } header: {
                    Text("Section 1")
                        .font(.title)
                        .frame(maxWidth : .infinity,alignment: .leading)
                        .background(Color.blue)
                        .padding()
                }
                
                
                Section {
                    ForEach(0..<20) { index in
                    
                        Rectangle()
                            .fill(.green)
                            .frame(height : 150)
                    }
                } header: {
                    Text("Section 2")
                        .font(.title)
                        .frame(maxWidth : .infinity,alignment: .leading)
                        .background(Color.green)
                        .padding()
                }

                
                
                
            }
            
        
        }.padding(5)
        
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
