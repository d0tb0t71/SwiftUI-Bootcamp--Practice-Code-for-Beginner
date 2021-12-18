//
//  FrameBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 24/11/21.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(height : 100)
            .background(Color.red)
            .frame(width : 200, height : 200)
            .background(Color.gray)
            .frame(width : 100 , height : 300)
            .background(Color.orange)
            .frame(width: 400, height: 200)
            .background(Color.purple)
            .frame(width: .infinity, height: 800)
            .background(Color.pink)
        
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
