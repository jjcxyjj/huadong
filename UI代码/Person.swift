//
//  Person.swift
//  pro 1
//
//  Created by a on 2020/7/26.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI


struct Person: View {
    @State var person = false
    @State var star = false
    @State var clock = false
    @State var gear = false
    @State var envelope = false
    @State var personView = CGSize.zero
    @State var starView = CGSize.zero
    @State var clockView = CGSize.zero
    @State var gearView = CGSize.zero
    @State var envelopeView = CGSize.zero
    
    var body: some View {
        ZStack {
            ZStack {
                Image("人物介绍背景")
                    .resizable()
                    .frame(width: 480, height:780)
                    .padding(70)
                    .aspectRatio(contentMode: .fit)
                    
                    .offset(y: person||star||clock||envelope||gear ? 500:0)
                    .rotation3DEffect(Angle(degrees: person||star||clock||envelope||gear ? -Double(personView.height / 10)-70: 0), axis: (x: person||star||clock||envelope||gear ? -70:0, y: 0, z: 0))
                    .scaleEffect(person||star||clock||envelope||gear ?0.6:1)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration:0 ))
                    //.animation(.easeOut(duration : 0.5))
                    .background(Color(#colorLiteral(red: 1, green: 0.7507420778, blue: 0.4048715234, alpha: 1)))
                    
                Button(action: {self.person.toggle()}) {
                    Image("person")
                        .renderingMode(.original)
                        .frame(width: 100, height : 100)
                        .scaleEffect(3)
                    
                    }
                .scaleEffect(star||clock||envelope||gear ? 0.8:1)
                .rotation3DEffect(Angle(degrees: -65), axis: (x: star||clock||envelope||gear ? -65:0, y: 0, z: 0))
                .offset(x:star||clock||envelope||gear ? -75:-90,y:star||clock||envelope||gear ? 65:-250)
                .opacity(person ? 0:1)
                .animation(.easeOut(duration : 0.5))
                
                Button(action: {self.star.toggle()}) {
                    Image("star.circle")
                        .renderingMode(.original)
                        .frame(width: 100, height : 100)
                        .scaleEffect(2.2)
                }
                .scaleEffect(x:1,y:person||clock||envelope||gear ? 1.5:1)
                .rotation3DEffect(Angle(degrees: -65), axis: (x: person||clock||envelope||gear ? -65:0, y: 0, z: 0))
                .offset(x:person||clock||envelope||gear ? -10:-8,y:person||clock||envelope||gear ? 175:-37)
                .opacity(star ? 0:1)
                .animation(.easeOut(duration : 0.5))
                
                Button(action: {self.clock.toggle()}) {
                    Image("clock_normal")
                        .renderingMode(.original)
                        .frame(width: 100, height : 100)
                        .scaleEffect(2.2)
                }
                .scaleEffect(x: 1,y: star||person||envelope||gear ? 1.5:1)
                .rotation3DEffect(Angle(degrees: -65), axis: (x: star||person||envelope||gear ? -65:0, y: 0, z: 0))
                .offset(x:star||person||envelope||gear ? 106:95,y:star||person||envelope||gear ? 175:-37)
                .opacity(clock ? 0:1)
                .animation(.easeOut(duration : 0.5))
                
                Button(action: {self.envelope.toggle()}) {
                    Image("envelope.circle")
                        .renderingMode(.original)
                        .frame(width: 100, height : 100)
                        .scaleEffect(2.2)
                }
                .scaleEffect(x:star||clock||person||gear ? 1.2:1, y: star||clock||person||gear ? 1.6:1)

                .rotation3DEffect(Angle(degrees: -50), axis: (x: star||clock||person||gear ? -50:0, y: 0, z: 0))
                .offset(x:star||clock||person||gear ? -11:-8,y:star||clock||person||gear ? 270:70)
                .opacity(envelope ? 0:1)
                .animation(.easeOut(duration : 0.5))
                Button(action: {self.gear.toggle()}) {
                    Image("gear")
                        .renderingMode(.original)
                        .frame(width: 100, height : 100)
                        .scaleEffect(2.2)
                }
                .scaleEffect(x:star||clock||envelope||person ? 1.1: 1,y:star||clock||envelope||person ? 2.2:1)
                
                .rotation3DEffect(Angle(degrees: -65), axis: (x: star||clock||envelope||person ? -65:0, y: 0, z: 0))
                .offset(x:star||clock||envelope||person ? 138:95,y:star||clock||envelope||person ? 265:70)
                .opacity(gear ? 0:1)
                .animation(.easeOut(duration : 0.5))
                
            }
            VIP()
                //.background(Color.black.opacity(0.001))
                .offset(y: person ? 0:-500)
                .offset(y: personView.height)
                .animation(.spring(response: 0.5,dampingFraction : 0.6, blendDuration :0 ))
                .onTapGesture {
                    self.person.toggle()
            }
            .gesture(
                    DragGesture().onChanged{ value in
                        self.personView =  value.translation
                    }
                    .onEnded{ value in
                        if self.personView.height < 0 {
                            self.person = false
                    }
                    self.personView  = .zero
                }
            )
            
            Collect()
                .offset(y: star ? 0:-500)
                .offset(y: starView.height)
                .animation(.spring(response: 0.5,dampingFraction : 0.6, blendDuration :0 ))
                .onTapGesture {
                    self.star.toggle()
            }
//            .gesture(
//                    DragGesture().onChanged{ value in
//                        self.starView =  value.translation
//                    }
//                    .onEnded{ value in
//                        if self.starView.height < 0 {
//                            self.star = false
//                    }
//                    self.starView  = .zero
//                }
//            )
            
            History()
                .offset(y: clock ? 0:-500)
                .offset(y: clockView.height)
                .animation(.spring(response: 0.5,dampingFraction : 0.6, blendDuration :0 ))
                .onTapGesture {
                    self.clock.toggle()
            }
            .gesture(
                    DragGesture().onChanged{ value in
                        self.clockView =  value.translation
                    }
                    .onEnded{ value in
                        if self.clockView.height < 0 {
                            self.clock = false
                    }
                    self.clockView  = .zero
                }
            )
            
            News()
                .offset(y: envelope ? 0:-500)
                .offset(y: envelopeView.height)
                .animation(.spring(response: 0.5,dampingFraction : 0.6, blendDuration :0 ))
                .onTapGesture {
                    self.envelope.toggle()
            }
            .gesture(
                    DragGesture().onChanged{ value in
                        self.envelopeView =  value.translation
                    }
                    .onEnded{ value in
                        if self.envelopeView.height < 0 {
                            self.envelope = false
                    }
                    self.envelopeView  = .zero
                }
            )
            
            SetUp()
                .offset(y: gear ? 0:-500)
                .offset(y: gearView.height)
                .animation(.spring(response: 0.5,dampingFraction : 0.6, blendDuration :0 ))
                .onTapGesture {
                    self.gear.toggle()
            }
            .gesture(
                    DragGesture().onChanged{ value in
                        self.gearView =  value.translation
                    }
                    .onEnded{ value in
                        if self.gearView.height < 0 {
                            self.gear = false
                    }
                    self.gearView  = .zero
                }
            )
        }
    }
}


struct Person_Previews: PreviewProvider {
    static var previews: some View {
        Person()
    }
}
