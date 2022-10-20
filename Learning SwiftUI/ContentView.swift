//
//  ContentView.swift
//  Learning SwiftUI
//
//  Created by Diego Galeano on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 5)
            Text("Hello, world!").bold().padding()
        }
        .foregroundColor(.orange)
        .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
