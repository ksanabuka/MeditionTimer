@_private(sourceFile: "ContentView.swift") import CoreDataToDo
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 195)
        AnyView(__designTimeSelection(ContentView(), "#17165.[6].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension UIImage {
    @_dynamicReplacement(for: imageWithColor(tintColor:)) private func __preview__imageWithColor(tintColor: UIColor) -> UIImage {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 171)
    __designTimeSelection(UIGraphicsBeginImageContextWithOptions(__designTimeSelection(self.size, "#17165.[5].[0].[0].arg[0].value"), __designTimeBoolean("#17165.[5].[0].[0].arg[1].value", fallback: false), __designTimeSelection(self.scale, "#17165.[5].[0].[0].arg[2].value")), "#17165.[5].[0].[0]")

    let context = UIGraphicsGetCurrentContext()!
    __designTimeSelection(context.translateBy(x: __designTimeInteger("#17165.[5].[0].[2].modifier[0].arg[0].value", fallback: 0), y: __designTimeSelection(self.size.height, "#17165.[5].[0].[2].modifier[0].arg[1].value")), "#17165.[5].[0].[2]")
    __designTimeSelection(context.scaleBy(x: __designTimeFloat("#17165.[5].[0].[3].modifier[0].arg[0].value", fallback: 1.0), y: __designTimeFloat("#17165.[5].[0].[3].modifier[0].arg[1].value", fallback: -1.0)), "#17165.[5].[0].[3]");
    __designTimeSelection(context.setBlendMode(.normal), "#17165.[5].[0].[4]")

    let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height) as CGRect
    __designTimeSelection(context.clip(to: __designTimeSelection(rect, "#17165.[5].[0].[6].modifier[0].arg[0].value"), mask: self.cgImage!), "#17165.[5].[0].[6]")
    __designTimeSelection(tintColor.setFill(), "#17165.[5].[0].[7]")
    __designTimeSelection(context.fill(__designTimeSelection(rect, "#17165.[5].[0].[8].modifier[0].arg[0].value")), "#17165.[5].[0].[8]")

    let newImage = UIGraphicsGetImageFromCurrentImageContext()!
    __designTimeSelection(UIGraphicsEndImageContext(), "#17165.[5].[0].[10]")

    return __designTimeSelection(newImage, "#17165.[5].[0].[11]")
#sourceLocation()
    }
}

extension DummyView {
    @_dynamicReplacement(for: updateUIView(_:context:)) private func __preview__updateUIView(_ uiView: DummyView.UIViewType, context: UIViewRepresentableContext<DummyView>) {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 164)
#sourceLocation()
    }
}

extension DummyView {
    @_dynamicReplacement(for: makeUIView(context:)) private func __preview__makeUIView(context: UIViewRepresentableContext<DummyView>) -> UIButton {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 157)
        let button = UIButton()
        __designTimeSelection(button.setTitle(__designTimeString("#17165.[4].[0].[1].modifier[0].arg[0].value.[0].value", fallback: "DUMMY"), for: .normal), "#17165.[4].[0].[1]")
        button.backgroundColor = .red
        return __designTimeSelection(button, "#17165.[4].[0].[3]")
#sourceLocation()
    }
}

extension ImagePickerView {
    @_dynamicReplacement(for: updateUIViewController(_:context:)) private func __preview__updateUIViewController(_ uiViewController: ImagePickerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ImagePickerView>) {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 151)
#sourceLocation()
    }
}

extension ImagePickerView.Coordinator {
typealias Coordinator = ImagePickerView.Coordinator

    @_dynamicReplacement(for: imagePickerController(_:didFinishPickingMediaWithInfo:)) private func __preview__imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 140)
            if let selectedImageFromPicker = info[.originalImage] as? UIImage {
                __designTimeSelection(print(__designTimeSelection(selectedImageFromPicker, "#17165.[3].[4].[2].[0].[0].[0].arg[0].value")), "#17165.[3].[4].[2].[0].[0].[0]")
                self.parent.selectedImage = selectedImageFromPicker
            }
            self.parent.isPresented = false
#sourceLocation()
    }
}

extension ImagePickerView {
    @_dynamicReplacement(for: makeCoordinator()) private func __preview__makeCoordinator() -> ImagePickerView.Coordinator {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 130)
        return __designTimeSelection(Coordinator(parent: __designTimeSelection(self, "#17165.[3].[3].[0].arg[0].value")), "#17165.[3].[3].[0]")
#sourceLocation()
    }
}

extension ImagePickerView {
    @_dynamicReplacement(for: makeUIViewController(context:)) private func __preview__makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIViewController {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 124)
        let controller = UIImagePickerController()
        controller.delegate = context.coordinator
        return __designTimeSelection(controller, "#17165.[3].[2].[2]")
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 39)
        

//        NavigationView {
            AnyView(__designTimeSelection(List {
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(MyToDo(), "#17165.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value")){
                    __designTimeSelection(HStack {
                        __designTimeSelection(Image(systemName: __designTimeString("#17165.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "bag.badge.plus"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 40), height: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 40))
                            .clipped(), "#17165.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#17165.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "To Do's")), "#17165.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]")
                    }, "#17165.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
                }, "#17165.[2].[4].property.[0].[0].arg[0].value.[0]")
                
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(HomeView(), "#17165.[2].[4].property.[0].[0].arg[0].value.[1].arg[0].value")){
                    __designTimeSelection(HStack {
                        __designTimeSelection(Image(systemName: __designTimeString("#17165.[2].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "exclamationmark.bubble"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 40), height: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 40))
                            .clipped(), "#17165.[2].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#17165.[2].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "Reminders")), "#17165.[2].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1]")
                    }, "#17165.[2].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0]")
                }, "#17165.[2].[4].property.[0].[0].arg[0].value.[1]")
                __designTimeSelection(Divider(), "#17165.[2].[4].property.[0].[0].arg[0].value.[2]")
                __designTimeSelection(HStack {

                    __designTimeSelection(Image(uiImage: __designTimeSelection(imageInBlackBox, "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value", fallback: 40), height: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[1].value", fallback: 40))
                        .border(__designTimeSelection(Color.black, "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[3].arg[0].value"), width: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[3].arg[1].value", fallback: 1))
                        .clipped(), "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0]")
                    __designTimeSelection(Text(__designTimeString("#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].value", fallback: "Set Background")), "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[1]")
                    __designTimeSelection(Spacer(), "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[2]")
                    __designTimeSelection(Button(action: {
                         __designTimeSelection(self.isShowingImagePicker.toggle(), "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[0]")
                     }, label: {
                         __designTimeSelection(Text(__designTimeString("#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "> ")), "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0]")
                     })
                     .sheet(isPresented: __designTimeSelection($isShowingImagePicker, "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[3].modifier[0].arg[0].value"), content: {
                         __designTimeSelection(ImagePickerView(isPresented: __designTimeSelection(self.$isShowingImagePicker, "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[3].modifier[0].arg[1].value.[0].arg[0].value"), selectedImage: __designTimeSelection(self.$imageInBlackBox, "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[3].modifier[0].arg[1].value.[0].arg[1].value")), "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[3].modifier[0].arg[1].value.[0]")
                     }), "#17165.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[3]")
                              
                }, "#17165.[2].[4].property.[0].[0].arg[0].value.[3]")
                
                __designTimeSelection(Image(uiImage: __designTimeSelection(imageInBlackBox, "#17165.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[4].modifier[2].arg[0].value", fallback: 40), height: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[4].modifier[2].arg[1].value", fallback: 40))
                    .border(__designTimeSelection(Color.black, "#17165.[2].[4].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value"), width: __designTimeInteger("#17165.[2].[4].property.[0].[0].arg[0].value.[4].modifier[3].arg[1].value", fallback: 1))
                    .clipped(), "#17165.[2].[4].property.[0].[0].arg[0].value.[4]")
                            
                __designTimeSelection(Toggle(isOn: __designTimeSelection($allowShaking, "#17165.[2].[4].property.[0].[0].arg[0].value.[5].arg[0].value")) {
                    __designTimeSelection(Text(__designTimeString("#17165.[2].[4].property.[0].[0].arg[0].value.[5].arg[1].value.[0].arg[0].value.[0].value", fallback: "Allow Shaking")), "#17165.[2].[4].property.[0].[0].arg[0].value.[5].arg[1].value.[0]")
                }, "#17165.[2].[4].property.[0].[0].arg[0].value.[5]")
                __designTimeSelection(Toggle(isOn: __designTimeSelection($autolock, "#17165.[2].[4].property.[0].[0].arg[0].value.[6].arg[0].value")) {
                    __designTimeSelection(Text(__designTimeString("#17165.[2].[4].property.[0].[0].arg[0].value.[6].arg[1].value.[0].arg[0].value.[0].value", fallback: "Auto Lock")), "#17165.[2].[4].property.[0].[0].arg[0].value.[6].arg[1].value.[0]")
                }, "#17165.[2].[4].property.[0].[0].arg[0].value.[6]")
            }, "#17165.[2].[4].property.[0].[0]"))
#sourceLocation()
            
//        .navigationBarTitle(Text("Settings"), displayMode: .inline)
//            .foregroundColor(Color(red: 139/255, green: 125/255, blue: 105/255))
////            .navigationBarItems(leading:
////                NavigationLink(
////                    destination: HomeView()) {
////                        Image(systemName: "house")
////                        .resizable()
////                        .scaledToFit()
////                        .frame(width: 40, height: 40)
////                        .clipped()
////
////            }, trailing: Text("Hi"))
//            .navigationBarItems(trailing: Text("Hi"))
//           // .foregroundColor(.red)
//            .background(Image(uiImage: imageInBlackBox))
//        }
    }
}

extension HomeView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ContentView.swift", line: 20)
        AnyView(__designTimeSelection(Text(__designTimeString("#17165.[1].[0].property.[0].[0].arg[0].value.[0].value", fallback: "Some text")), "#17165.[1].[0].property.[0].[0]"))
#sourceLocation()
    }
}

typealias HomeView = CoreDataToDo.HomeView
typealias ContentView = CoreDataToDo.ContentView
typealias ImagePickerView = CoreDataToDo.ImagePickerView
typealias DummyView = CoreDataToDo.DummyView
typealias ContentView_Previews = CoreDataToDo.ContentView_Previews