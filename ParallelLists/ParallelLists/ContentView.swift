//
//  ContentView.swift
//  ParallelLists
//
//  Created by Serge Ostrowsky on 16/05/2020.
//  Copyright © 2020 Serge Ostrowsky. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    struct listsSetup: ViewModifier {
      func body(content: Content) -> some View {
        return content
        .frame(maxHeight: UIScreen.main.bounds.size.height/3)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
            .padding([.top, .bottom])
        }
    }
    
    var body: some View {
        
        VStack {
                HStack {
                    VStack { // 1 list Vstack
                        VStack {
                        Text("List 1")
                            .padding(.top)
                        List {
                            EventRow()
                            EventRow()
                        } // END of 1st List
                        }
                            .modifier(listsSetup())
                    } // END of 1st list VStack
                    
                    VStack { // 2nd Vstack
                        VStack {
                        Text("List 2")
                            .padding(.top)
                        List {
                            EventRow()
                            EventRow()
                        } // END of Landings List
                        }
                        .modifier(listsSetup())
                    } // End of 2nd List VStack
                } // End of 1st & 2nd lists HStack
                    .padding(.top)
                Spacer()
        } // END of VStack
    } // END of body
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
    ContentView()
    }
}
