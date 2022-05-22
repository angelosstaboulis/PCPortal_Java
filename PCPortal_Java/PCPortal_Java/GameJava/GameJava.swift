//
//  GameJava.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import SwiftUI
import Combine
struct GameJava: View {
    @State var questions = [GameQuestion(label: "Who is James Gossling", answer1: "Java Creator", answer2: "Microsoft Employee", answer3: "Company Owner", corectAnswer: "Java Creator"),GameQuestion(label: "Can i wrote Web Application in Java?", answer1: "Yes", answer2: "No", answer3: "No only in Linux OS", corectAnswer: "Yes"),GameQuestion(label: "Can i use pointers in Java like ANSI C?", answer1: "Yes", answer2: "No", answer3: "No only in Web Applications", corectAnswer: "No"),GameQuestion(label: "Which IDE can i use to write Java Applcations", answer1: "NetBeans", answer2: "PyDev", answer3: "XCode", corectAnswer: "NetBeans"),GameQuestion(label: "Java Executable has a jar extension", answer1: "No", answer2: "Yes", answer3: "No only in Windows", corectAnswer: "Yes"),GameQuestion(label: "Before i start to download JDK i must pay ?", answer1: "Yes", answer2: "No", answer3: "You must pay with paypal", corectAnswer: "No")]
    @State var getSelected1:String = ""
    @State var getSelected2:String = ""
    @State var getSelected3:String = ""
    @State var answer1:String = ""
    @State var answer2:String = ""
    @State var answer3:String = ""
    @State var counter:Int!=0
    @State private var selected:Bool=false
    @State var selected1:Bool=false
    @State var selected2:Bool=false
    @State var selected3:Bool=false
    @State private var correct:Int=0
    @State private var imageName:String="square"    
    var body: some View {
        VStack(alignment:.center){
            VStack{
                HStack{
                        Image(uiImage: UIImage(named: "pcportal")!).resizable().fixedSize()
                }
                HStack(spacing:30){
                    Text(questions[self.counter].label).frame(width: 400, height: 45, alignment: .leading)
                }.frame(width: 300, height: 50, alignment: .leading)
                HStack(spacing:30){
                    CheckBox(imageName: $imageName, title: $answer1, selected: $selected1, getSelected: $getSelected1).padding(.leading).foregroundColor(.red).frame(width: 400, height: 45, alignment: .leading).onTapGesture {
                        debugPrint("clicked")
                    }
                }.frame(width: 300, height: 50, alignment: .leading).simultaneousGesture(
                    TapGesture()
                        .onEnded { _ in
                            selected2 = false
                            selected3 = false
                        }
                )
              
                HStack(spacing:30){
                    CheckBox(imageName: $imageName, title: $answer2, selected: $selected2, getSelected: $getSelected2).padding(.leading).foregroundColor(.red).frame(width: 400, height: 45, alignment: .leading)
                }.frame(width: 300, height: 50, alignment: .leading).simultaneousGesture(
                    TapGesture()
                        .onEnded { _ in
                            selected1 = false
                            selected3 = false

                        }
                )
                HStack(spacing:30){
                    CheckBox(imageName: $imageName, title: $answer3, selected: $selected3, getSelected: $getSelected3).padding(.leading).foregroundColor(.red).frame(width: 400, height: 45, alignment: .leading)
                }.frame(width: 300, height: 50, alignment: .leading).simultaneousGesture(
                    TapGesture()
                        .onEnded { _ in
                            selected1 = false
                            selected2 = false
                        }
                )
                HStack(spacing:30){
                            Text("Correct Answer:\(correct)")
                }.frame(width: 300, height: 50, alignment: .leading)
                Button {
                    self.counter = (self.counter + 1)
                    if self.counter == 1 && $getSelected1.wrappedValue.contains("Java Creator"){
                        self.correct = self.correct + 1
                        self.imageName = "square"
                        
                    }
                    if self.counter == 2 && $getSelected1.wrappedValue.contains("Yes"){
                        self.correct = self.correct + 1
                        self.imageName = "square"
                    }
                    if self.counter == 3 && $getSelected2.wrappedValue.contains("No"){
                        self.correct = self.correct + 1
                        self.imageName = "square"
                    }
                    if self.counter == 4 && $getSelected1.wrappedValue.contains("NetBeans"){
                        self.correct = self.correct + 1
                        self.imageName = "square"
                    }
                    if self.counter == 5 && $getSelected2.wrappedValue.contains("Yes"){
                        self.correct = self.correct + 1
                        self.imageName = "square"
                    }
                    if self.counter == 6 && $getSelected2.wrappedValue.contains("Yes"){
                        self.correct = self.correct + 1
                        self.imageName = "square"
                    }
                    if self.counter == 6 {
                            self.counter = 0
                            self.correct = 0
                            answer1 = questions[counter].answer1
                            answer2 = questions[counter].answer2
                            answer3 = questions[counter].answer3
                            selected1 = false
                            selected2 = false
                            selected3 = false
                    }
                    else{
                            
                            answer1 = questions[counter].answer1
                            answer2 = questions[counter].answer2
                            answer3 = questions[counter].answer3
                            selected1 = false
                            selected2 = false
                            selected3 = false
                    }
                } label: {
                    Text("Next Question").padding()
                }.background(Rectangle().foregroundColor(.red))
                    .onAppear {
                        self.counter = 0
                        answer1 = questions[counter].answer1
                        answer2 = questions[counter].answer2
                        answer3 = questions[counter].answer3
                        
                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-150, alignment: .center)
           
            
        }   .foregroundColor(Color.yellow)
            .background(Color.accentColor)
     
    }
    
}

