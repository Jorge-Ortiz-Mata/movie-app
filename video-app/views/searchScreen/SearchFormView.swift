//
//  SearchFormView.swift
//  video-app
//
//  Created by Jorge on 30/01/24.
//

import SwiftUI

struct SearchFormView: View {
    @State var movieSearched: String = ""
    var handleOnChange: (_: String) -> Void

    var body: some View {
        VStack(alignment: .leading) {
            Text("Search by name:")
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            TextField("", text: $movieSearched)
                .padding(7)
                .foregroundColor(.white)
                .border(Color(red: 0.2, green: 0.2, blue: 0.2))
                .cornerRadius(4)
                .onChange(of: movieSearched) {
                    handleOnChange(movieSearched)
                }
            
        }
        .padding()
    }
}

func dummyFunction(name: String) -> Void {
    print(name)
    return
}

#Preview {
    SearchFormView(handleOnChange: (dummyFunction))
}
