//
//  EventRow.swift
//  RecentExp
//
//  Created by Serge Ostrowsky on 15/05/2020.
//  Copyright © 2020 Serge Ostrowsky. All rights reserved.
//

import SwiftUI
import CoreData

struct EventRow: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .top, endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
        .overlay(
            VStack{
            HStack {
            Text("Text one")
                Spacer()
            Text("Text two")
            }
                HStack {
                    Spacer()
                    Image(systemName: "flame")
                    .font(.body)
                    Spacer()
                } // END of second HStack
                    .padding(.top, -14)
            } //END of Vstack
        )
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
       EventRow().previewLayout(.fixed(width: 300, height: 60))
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
////Test data
//        let newEvent = Events(context: context)
//        newEvent.eventDate = Date()
//        newEvent.aircraftType = 1
//        newEvent.airportName = "LDG tst"
//        newEvent.id = UUID()
//        newEvent.isLanding = true
//        newEvent.isSimulator = true
//
//        let newTakeoff = Events(context: context)
//        newTakeoff.eventDate = Date()
//        newTakeoff.aircraftType = 1
//        newTakeoff.airportName = "TOFF tst"
//        newTakeoff.id = UUID()
//        newTakeoff.isLanding = false
//        newTakeoff.isSimulator = true
//
//        return ContentView().environment(\.managedObjectContext, context)
//    }
//}
