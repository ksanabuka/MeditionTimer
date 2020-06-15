import SwiftUI
import AVKit
import Foundation
import AVFoundation
import Combine


struct SessionsView: View {
    @EnvironmentObject var userMedSets: UserMedSets
   
   @EnvironmentObject var userMedSets1: UserMedSets

   @State var allSessions: [UserMedSets] = [UserMedSets(), UserMedSets()]
   
   func delete(at offsets: IndexSet) {
       allSessions.remove(atOffsets: offsets)
   }

   
    var body: some View {

      NavigationView {
               
         List {
            ForEach(allSessions, id: \.id){ session in
               NavigationLink(destination: TimerView().navigationBarItems(trailing: NavigationLink("Edit", destination: EditMeditation().navigationBarTitle(Text("Edit"), displayMode: .inline)))) {
                                 SessionRow(session: session)
                         }
            }.onDelete(perform: delete)
         }
        .contextMenu {
            Button(action: {
                // change country setting
            }) {
                Text("Delete")
                Image(systemName: "globe")
            }

            Button(action: {
                // enable geolocation
            }) {
                Text("Edit")
                Image(systemName: "location.circle")
            }
        }

            .navigationBarTitle(Text("My Meditations"), displayMode: .inline)
            .navigationBarItems(leading: NavigationLink("Set", destination: ContentView()) , trailing: NavigationLink("Add", destination: EditMeditation().navigationBarTitle(Text("Add New Session"), displayMode: .inline)))
         
        }
      
    }
}
