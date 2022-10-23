//
//  ContentView.swift
//  Learning SwiftUI
//
//  Created by Diego Galeano on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🐶","🦋","🕷","🐥","🦐","🐬","🐌","🐢"]
    @State var emojisCount = 4
    
    var body: some View {
        
        VStack{
            HStack{
                ForEach(emojis[0..<emojisCount], id: \.self){
                    emoji in CardView(content: emoji)
                }
                
            }
            Spacer(minLength: 20)
            HStack{
                add
                Spacer()
                remove
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .foregroundColor(.red)
        .padding()
    }
    
    var add: some View{
        Button{
                if emojisCount < emojis.count {
                    emojisCount += 1
                }
            
        } label :{
            Image(systemName: "plus.circle")
        }
    }
    var remove: some View{
        Button{
            if emojisCount > 1 {
                emojisCount -= 1
            }
            
        }label: {
            Image(systemName: "minus.circle")
        }
    }
}




struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 20)
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            }else{
                shape.fill()
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
