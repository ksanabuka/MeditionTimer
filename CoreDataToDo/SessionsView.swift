import SwiftUI
import AVKit
import Foundation
import AVFoundation
import Combine


struct SessionsView: View {
   
   @EnvironmentObject var allMeds: DataRep

   @ObservedObject var udAllMeds = udUserMeditationSettings()

   
   @State var firstLaunch = 1
   
   func delete(at offsets: IndexSet) {
      allMeds.sessionListUI.remove(atOffsets: offsets)
      print("deleted")
      allMeds.sessionList.remove(atOffsets: offsets)
   }

func udToList(){
   
   var med_name: String = ""
   var med_note: String = ""
   var prep_time: Int = -1
   var med_time: Int = -1
   var interval_time: Int = -1
   var rest_time: Int = -1
   var prep_chime: Int = -1
   var repeat_prep_chime: Int = -1
   var start_med_chime: Int = -1
   var repeat_start_med_chime: Int = -1
   var interval_chime: Int = -1
   var repeat_interval_chime: Int = -1
   var end_med_chime: Int = -1
   var repeat_end_med_chime: Int = -1
   var end_rest_chime: Int = -1
   var repeat_end_rest_chime: Int = -1

   
   for (index, _) in self.allMeds.sessionList.enumerated()
   {
      let udId: Int = self.allMeds.sessionList[index].udId

   switch udId {
   case 0:
      
      med_name = self.udAllMeds.med_name0
      med_note = self.udAllMeds.med_note0
      prep_time = self.udAllMeds.prep_time0
      med_time = self.udAllMeds.med_time0
      interval_time = self.udAllMeds.interval_time0
      rest_time = self.udAllMeds.rest_time0
      prep_chime = self.udAllMeds.prep_chime0
      repeat_prep_chime = self.udAllMeds.repeat_prep_chime0
      start_med_chime = self.udAllMeds.start_med_chime0
      repeat_start_med_chime = self.udAllMeds.repeat_start_med_chime0
      interval_chime = self.udAllMeds.interval_chime0
      repeat_interval_chime = self.udAllMeds.repeat_interval_chime0
      end_med_chime = self.udAllMeds.end_med_chime0
      repeat_end_med_chime = self.udAllMeds.repeat_end_med_chime0
      end_rest_chime = self.udAllMeds.end_rest_chime0
      repeat_end_rest_chime = self.udAllMeds.repeat_end_rest_chime0
      
   case 1:
      med_name = self.udAllMeds.med_name1
      med_note = self.udAllMeds.med_note1
      prep_time = self.udAllMeds.prep_time1
      med_time = self.udAllMeds.med_time1
      interval_time = self.udAllMeds.interval_time1
      rest_time = self.udAllMeds.rest_time1
      prep_chime = self.udAllMeds.prep_chime1
      repeat_prep_chime = self.udAllMeds.repeat_prep_chime1
      start_med_chime = self.udAllMeds.start_med_chime1
      repeat_start_med_chime = self.udAllMeds.repeat_start_med_chime1
      interval_chime = self.udAllMeds.interval_chime1
      repeat_interval_chime = self.udAllMeds.repeat_interval_chime1
      end_med_chime = self.udAllMeds.end_med_chime1
      repeat_end_med_chime = self.udAllMeds.repeat_end_med_chime1
      end_rest_chime = self.udAllMeds.end_rest_chime1
      repeat_end_rest_chime = self.udAllMeds.repeat_end_rest_chime1

      default:
      print("My default switch udId in udToList")
      med_name = self.udAllMeds.med_name0
      med_note = self.udAllMeds.med_note0
      prep_time = self.udAllMeds.prep_time0
      med_time = self.udAllMeds.med_time0
      interval_time = self.udAllMeds.interval_time0
      rest_time = self.udAllMeds.rest_time0
      prep_chime = self.udAllMeds.prep_chime0
      repeat_prep_chime = self.udAllMeds.repeat_prep_chime0
      start_med_chime = self.udAllMeds.start_med_chime0
      repeat_start_med_chime = self.udAllMeds.repeat_start_med_chime0
      interval_chime = self.udAllMeds.interval_chime0
      repeat_interval_chime = self.udAllMeds.repeat_interval_chime0
      end_med_chime = self.udAllMeds.end_med_chime0
      repeat_end_med_chime = self.udAllMeds.repeat_end_med_chime0
      end_rest_chime = self.udAllMeds.end_rest_chime0
      repeat_end_rest_chime = self.udAllMeds.repeat_end_rest_chime0

      
   }
      
   self.allMeds.sessionList[index].med_name = med_name
   self.allMeds.sessionList[index].med_note = med_note
   self.allMeds.sessionList[index].prep_time = prep_time
   self.allMeds.sessionList[index].med_time = med_time
   self.allMeds.sessionList[index].interval_time = interval_time
   self.allMeds.sessionList[index].rest_time = rest_time
   self.allMeds.sessionList[index].prep_chime = prep_chime
   self.allMeds.sessionList[index].repeat_prep_chime = repeat_prep_chime
   self.allMeds.sessionList[index].start_med_chime = start_med_chime
   self.allMeds.sessionList[index].repeat_start_med_chime = repeat_start_med_chime
   self.allMeds.sessionList[index].interval_chime = interval_chime
   self.allMeds.sessionList[index].repeat_interval_chime = repeat_interval_chime
   self.allMeds.sessionList[index].end_med_chime = end_med_chime
   self.allMeds.sessionList[index].repeat_end_med_chime = repeat_end_med_chime
   self.allMeds.sessionList[index].end_rest_chime = end_rest_chime
   self.allMeds.sessionList[index].repeat_end_rest_chime = repeat_end_rest_chime


   }
   
   
   }
   
    var body: some View {

      NavigationView {
               
List {
   
   ForEach(allMeds.sessionListUI, id: \.self){ session in
      
      Group {
         if self.allMeds.getIntParametrByUIid(uiId: session.id, requiredParam: "active") == 1 {
            NavigationLink(destination: TimerView(indxLst: self.allMeds.getIntParametrByUIid(uiId: session.id, requiredParam: "indexInList"))
//         .navigationBarTitle(Text(self.allSession.sessionList[0].med_name), displayMode: .inline)
         .navigationBarItems(trailing: NavigationLink("Edit", destination: EditMeditation(sessnInx: self.allMeds.getIntParametrByUIid(uiId: session.id, requiredParam: "indexInList")).navigationBarTitle(Text("Edit"), displayMode: .inline)))) {
            SessionRow1(session: self.allMeds.sessionList[self.allMeds.getIntParametrByUIid(uiId: session.id, requiredParam: "indexInList")])
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
            
            

            
//            self.allMeds.sessionList[0].med_time = self.udAllMeds.med_time0
//             self.allMeds.sessionList[0].interval_time = self.udAllMeds.interval_time0
//             self.allMeds.sessionList[0].rest_time = self.udAllMeds.rest_time0
//             self.allMeds.sessionList[0].prep_time = self.udAllMeds.prep_time0

//
//
//              self.allMeds.sessionList[0].med_name = self.udAllMeds.med_name0
//
//             self.allMeds.sessionList[0].prep_chime = self.udAllMeds.prep_chime0
//             self.allMeds.sessionList[0].repeat_prep_chime = self.udAllMeds.repeat_prep_chime0
//
//
//             self.allMeds.sessionList[0].start_med_chime = self.udAllMeds.start_med_chime0
//             self.allMeds.sessionList[0].repeat_start_med_chime = self.udAllMeds.repeat_start_med_chime0
//
//             self.allMeds.sessionList[0].interval_chime = self.udAllMeds.interval_chime0
//             self.allMeds.sessionList[0].repeat_interval_chime = self.udAllMeds.repeat_interval_chime0
//
//             self.allMeds.sessionList[0].end_med_chime = self.udAllMeds.end_med_chime0
//             self.allMeds.sessionList[0].repeat_end_med_chime = self.udAllMeds.repeat_end_med_chime0
//
//             self.allMeds.sessionList[0].end_rest_chime = self.udAllMeds.end_rest_chime0
//             self.allMeds.sessionList[0].repeat_end_rest_chime = self.udAllMeds.repeat_end_rest_chime0
//
            
            self.udToList()

            self.allMeds.sessionList[0].total_med_time = self.allMeds.sessionList[0].prep_time + self.allMeds.sessionList[0].med_time + self.allMeds.sessionList[0].rest_time

            
            
            self.allMeds.durationPrepTime0.selectedHour = self.udAllMeds.prep_time0 / 3600
            
                self.allMeds.durationPrepTime0.selectedSecond = self.udAllMeds.prep_time0 % 60
                self.allMeds.durationPrepTime0.selectedMin = self.udAllMeds.prep_time0 / 60 % 60

             self.allMeds.durationMedTime0.selectedHour = self.udAllMeds.med_time0 / 3600
             self.allMeds.durationMedTime0.selectedSecond = self.udAllMeds.med_time0 % 60
             self.allMeds.durationMedTime0.selectedMin = self.udAllMeds.med_time0 / 60 % 60

             self.allMeds.durationIntervalTime0.selectedHour = self.udAllMeds.interval_time0 / 3600
             self.allMeds.durationIntervalTime0.selectedSecond = self.udAllMeds.interval_time0 % 60
             self.allMeds.durationIntervalTime0.selectedMin = self.udAllMeds.interval_time0 / 60 % 60

             self.allMeds.durationRestTime0.selectedHour = self.udAllMeds.rest_time0 / 3600
             self.allMeds.durationRestTime0.selectedSecond = self.udAllMeds.rest_time0 % 60
             self.allMeds.durationRestTime0.selectedMin = self.udAllMeds.rest_time0 / 60 % 60

             
          }
          else
          {
             print("On appear - NOT 1 launch")
         
          }

      }
      
    }
}
