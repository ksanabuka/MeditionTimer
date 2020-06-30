import SwiftUI
import AVKit
import Foundation
import AVFoundation
import Combine


struct SessionsView: View {
   
   @EnvironmentObject var allSession: DataRep

   
   @State var firstLaunch = 1
   
   func delete(at offsets: IndexSet) {
      allSession.sessionListUI.remove(atOffsets: offsets)
      print("deleted")
      allSession.sessionList.remove(atOffsets: offsets)
   }
   @ObservedObject var udUserMedSets = udUserMeditationSettings()


   
    var body: some View {

      NavigationView {
               
List {
   
   ForEach(allSession.sessionListUI, id: \.self){ session in
      
      Group {
         if self.allSession.getIntParametrByUIid(uiId: session.id, requiredParam: "active") == 1 {
            NavigationLink(destination: TimerView(indxLst: self.allSession.getIntParametrByUIid(uiId: session.id, requiredParam: "indexInList"))
//         .navigationBarTitle(Text(self.allSession.sessionList[0].med_name), displayMode: .inline)
         .navigationBarItems(trailing: NavigationLink("Edit", destination: EditMeditation(sessnInx: self.allSession.getIntParametrByUIid(uiId: session.id, requiredParam: "indexInList")).navigationBarTitle(Text("Edit"), displayMode: .inline)))) {
            SessionRow1(session: self.allSession.sessionList[self.allSession.getIntParametrByUIid(uiId: session.id, requiredParam: "indexInList")])
      }
         }
      }
      }.onDelete(perform: delete)

}
         .onAppear{
            
            
            print("1       !!!")
         }
//        .contextMenu {
//            Button(action: {
//            }) {
//                Text("Delete")
//                Image(systemName: "globe")
//            }
//
//            Button(action: {
//            }) {
//                Text("Edit")
//                Image(systemName: "location.circle")
//            }
//        }

            .navigationBarTitle(Text("My meditations"), displayMode: .inline)
            .navigationBarItems(leading: NavigationLink("Set", destination: ContentView()) , trailing: NavigationLink("Add", destination: EditMeditation(sessnInx: 0).navigationBarTitle(Text("Add New Session"), displayMode: .inline)))
         
      }
      .onAppear {
         print("On appear")

         if (self.firstLaunch == 1) {
             self.firstLaunch = 0
             print("On appear - 1 launch")
            
            

            
            self.allSession.sessionList[0].med_time = self.udUserMedSets.med_time0
             self.allSession.sessionList[0].interval_time = self.udUserMedSets.interval_time0
             self.allSession.sessionList[0].rest_time = self.udUserMedSets.rest_time0
             self.allSession.sessionList[0].prep_time = self.udUserMedSets.prep_time0

             self.allSession.sessionList[0].total_med_time = self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time
             

              self.allSession.sessionList[0].med_name = self.udUserMedSets.med_name0
                 
             self.allSession.sessionList[0].prep_chime = self.udUserMedSets.prep_chime0
             self.allSession.sessionList[0].repeat_prep_chime = self.udUserMedSets.repeat_prep_chime0
                 
               
             self.allSession.sessionList[0].start_med_chime = self.udUserMedSets.start_med_chime0
             self.allSession.sessionList[0].repeat_start_med_chime = self.udUserMedSets.repeat_start_med_chime0
             
             self.allSession.sessionList[0].interval_chime = self.udUserMedSets.interval_chime0
             self.allSession.sessionList[0].repeat_interval_chime = self.udUserMedSets.repeat_interval_chime0
             
             self.allSession.sessionList[0].end_med_chime = self.udUserMedSets.end_med_chime0
             self.allSession.sessionList[0].repeat_end_med_chime = self.udUserMedSets.repeat_end_med_chime0
             
             self.allSession.sessionList[0].end_rest_chime = self.udUserMedSets.end_rest_chime0
             self.allSession.sessionList[0].repeat_end_rest_chime = self.udUserMedSets.repeat_end_rest_chime0
             
             self.allSession.durationPrepTime0.selectedHour = self.udUserMedSets.prep_time0 / 3600
                self.allSession.durationPrepTime0.selectedSecond = self.udUserMedSets.prep_time0 % 60
                self.allSession.durationPrepTime0.selectedMin = self.udUserMedSets.prep_time0 / 60 % 60

             self.allSession.durationMedTime0.selectedHour = self.udUserMedSets.med_time0 / 3600
             self.allSession.durationMedTime0.selectedSecond = self.udUserMedSets.med_time0 % 60
             self.allSession.durationMedTime0.selectedMin = self.udUserMedSets.med_time0 / 60 % 60

             self.allSession.durationIntervalTime0.selectedHour = self.udUserMedSets.interval_time0 / 3600
             self.allSession.durationIntervalTime0.selectedSecond = self.udUserMedSets.interval_time0 % 60
             self.allSession.durationIntervalTime0.selectedMin = self.udUserMedSets.interval_time0 / 60 % 60

             self.allSession.durationRestTime0.selectedHour = self.udUserMedSets.rest_time0 / 3600
             self.allSession.durationRestTime0.selectedSecond = self.udUserMedSets.rest_time0 % 60
             self.allSession.durationRestTime0.selectedMin = self.udUserMedSets.rest_time0 / 60 % 60

             
          }
          else
          {
             print("On appear - NOT 1 launch")
         
          }

      }
      
    }
}
