//
//  LittleLemonLogo.swift
//  StartingProject
//
//  Created by macbook on 13/06/2023.
//

import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        Image("littleLemon")
            .resizable()
            .scaledToFit()
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}
