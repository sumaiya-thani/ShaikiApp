//
//  ContentView.swift
//  GifView_SwiftUI
//
//  Created by Pedro Rojas on 16/08/21.
//

import SwiftUI

struct ContentView: View{
@State var title = ""
@State var notes = ""
    @State private var showingSheet1 = false
	@State private var showingSheet2 = false
	@State private var showingSheet3 = false
	@State private var showingSheet4 = false
	@State private var showingSheet5 = false

var body: some View {
	VStack{
		ZStack{
			Color("Color")
				.ignoresSafeArea()
			RoundedRectangle(cornerRadius: 35).fill(Color("Color 2"))
				.padding(.bottom,-170)
				.frame(width: 400,height: 500)
			NavigationLink(destination: ContentView()){
				Image(systemName:"gearshape.fill").resizable()
					.frame(width: 30, height: 30)
					.foregroundColor(.white)
					.padding(.leading, 340)
			}.padding(.bottom,730)
			HStack{
				Text("Tesla Model X")
					.foregroundColor(.white)
				Image(systemName: "pencil")
					.foregroundColor(.white)
				
			}.padding(.bottom,730)
			Image("carImg")
			
				.shadow(radius: 20)
				.padding(.bottom,575)
//			HStack{
//				Text("2000"+"\n"+"Km")
//					.padding(.trailing,100)
//				Text("40"+"\n"+"Avrage Houer")
//				
//			}.multilineTextAlignment(.center)
//				.frame(width: 347, height: 132)
//				.foregroundColor(.white)
//				.background(Color("Color"))
//				.cornerRadius(16)
//				.shadow(radius: 10)
//				.offset(y:-150)
			VStack{
				HStack{
					Text("2000"+"\n"+"Km")
						.padding(.trailing,100)
					Text("40"+"\n"+"Avrage Houer")
					
				}.multilineTextAlignment(.center)
					.frame(width: 347, height: 132)
					.foregroundColor(.white)
					.background(Color("Color"))
					.cornerRadius(16)
					.shadow(radius: 10)
				VStack(alignment:.leading){
					HStack{
//						Text("vehicle insurance"+"\n"+"20"+"\n"+"km")
						Button("vehicle insurance"+"\n"+"20 km") {
								showingSheet1.toggle()
						}
						.sheet(isPresented: $showingSheet1) {
							VehicleInfo()
						}
							.frame(width: 164, height: 132)
							.foregroundColor(.white)
							.background(Color("Color"))
							.clipShape(RoundedRectangle(cornerRadius: 16.0))
							.padding(.all, 8.0)
							.shadow(radius: 10)
						
						Text("Oil Name"+"\n"+"2000/7500")
							.frame(width: 164, height: 132)
							.foregroundColor(.white)
							.background(Color("Color"))
							.clipShape(RoundedRectangle(cornerRadius: 16.0))
							.padding(.all, 8.0)
							.shadow(radius: 10)
					}.multilineTextAlignment(.center)
					HStack{
						Button("License "+"\n"+"expiration") {
							showingSheet2.toggle()
						}
						.sheet(isPresented: $showingSheet2) {
						LicenseView()
						}
							.frame(width: 164, height: 132)
							.foregroundColor(.white)
							.background(Color("Color"))
							.clipShape(RoundedRectangle(cornerRadius: 16.0))
							.padding(.all, 8.0)
							.shadow(radius: 10)
//						VStack {
							Button("Routine"+"\n"+"maintenance") {
								showingSheet3.toggle()
							}
							.sheet(isPresented: $showingSheet3) {
								RoutineMaintenance()
							}
								.frame(width: 164, height: 132)
								.foregroundColor(.white)
								.background(Color("Color"))
								.clipShape(RoundedRectangle(cornerRadius: 16.0))
								.padding(.all, 8.0)
								.shadow(radius: 10)
//						}
					}
					HStack{
						Button("Car Wash") {
							showingSheet4.toggle()
						}
						.sheet(isPresented: $showingSheet4) {
						VehicleInfo()
						}
							.frame(width: 164, height: 132)
							.foregroundColor(.white)
							.background(Color("Color"))
							.clipShape(RoundedRectangle(cornerRadius: 16.0))
							.padding(.all, 8.0)
							.shadow(radius: 10)
						
						Image(systemName: "plus.circle.fill")
							.resizable()
							.frame(width: 50, height: 50)
							.frame(width: 164, height: 132)
							.foregroundColor(.white)
							.background(Color("Color"))
							.clipShape(RoundedRectangle(cornerRadius: 16.0))
							.padding(.all, 8.0)
							.shadow(radius: 10)
					}
				}
			}
			.padding(.bottom,-200.0)
			}
			.padding()
		}
	}}
   #Preview {
	ContentView()
   }
