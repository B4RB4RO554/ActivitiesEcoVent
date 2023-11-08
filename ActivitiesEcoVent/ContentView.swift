//
//  ContentView.swift
//  ActivitiesEcoVent
//
//  Created by copper-orka on 8/11/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        ZStack{
            VStack{
                Image("first log image")
                VStack{
                    Text("Pack Your Bags")
                    Text("Chase Your Dreams")
                    Text("welcome paragraph")
                    HStack{
                        Text("img swipers")//this is an icon cluster
                    }
                    Text("this is Next button")
                    Text("this is skip button")

                }
                
                
            }
        }
        }
    }

    


private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
