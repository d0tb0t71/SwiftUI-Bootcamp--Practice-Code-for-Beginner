//
//  ForEachBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 13/12/21.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data : [String] = ["hi","hello","everyone","again"]
    let myString : String = "Hello"
    
    var body: some View {
        VStack{
            
            ForEach(data.indices) { index in
                Text("\(data[index]) \(index)")
            }
            
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
