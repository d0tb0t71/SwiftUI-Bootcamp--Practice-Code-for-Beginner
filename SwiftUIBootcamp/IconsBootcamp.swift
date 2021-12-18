//
//  IconsBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 21/11/21.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit()
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
            //.
        
        
            
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
