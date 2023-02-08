//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Виктория Виноградова on 07.02.2023.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    var body: some View {
        VStack {
            Text("An error has occurred!")
                .font(.title)
                .padding(.bottom)
            Text(errorWrapper.error.localizedDescription)
                .font(.headline)
            Spacer()
        }
        .padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }

    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired,
                     guidance: "You can safely ignore this error.")
    }

    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}
