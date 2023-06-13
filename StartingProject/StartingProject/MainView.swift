//
//  MainView.swift
//  StartingProject
//
//  Created by macbook on 13/06/2023.
//

import SwiftUI

struct MainView: View {
    @StateObject var model = Model()
    @State var tabSelection = 0
    var body: some View {
        TabView(selection: $model.tabViewSelectedIndex) {
            LocationView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
