//
//  LocationView.swift
//  StartingProject
//
//  Created by macbook on 13/06/2023.
//

import SwiftUI

struct LocationView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        VStack {
            LittleLemonLogo()
                .padding(.top, 50)
            Text(model.displayingReservationForm ? "Reservaion Details" : "Select a location")
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            
            NavigationView {
                List(model.restaurants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                    .navigationTitle("")
                    .navigationBarHidden(true)
                }
                .scrollContentBackground(.hidden)
                
            }
        }
        .padding()
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView().environmentObject(Model())
    }
}
