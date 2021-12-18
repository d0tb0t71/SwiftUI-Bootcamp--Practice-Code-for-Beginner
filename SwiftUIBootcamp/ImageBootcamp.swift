//
//  ImageBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 21/11/21.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("profile")
            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            //.clipShape(
              //  Circle()
            //)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
