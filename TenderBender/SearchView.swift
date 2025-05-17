//
//  SearchView.swift
//  TenderBender
//
//  Created by Rickey Johnson on 5/17/25.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            VStack {
                TenderSpotListView()
            }
                .navigationTitle("Search")
        }
    }
}

struct TenderSpotListView: View {
    var body: some View {
        HStack {
            Image("tenderImageFake")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 130)
            
            VStack(alignment: .leading) {
                Text("Tender Spot Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("123 Pennsylvania Ave, New York, NY 10012")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
                Text("Open until 11 PM")
                    .font(.subheadline)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    SearchView()
}
