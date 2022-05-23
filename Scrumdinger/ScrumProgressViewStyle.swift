//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by 하진호 on 2022/05/23.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    var theme: Theme
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(theme.accentColor)
                .frame(height: 20)
            ProgressView(configuration)
                .tint(theme.mainColor)
                .frame(height: 12)
                .padding(.horizontal)
        }
    }
}

//extension ProgressViewStyle where Self == ScrumProgressViewStyle {
//    static var scrumProgress: Self { Self(theme: <#Theme#>) }
//}

struct ScrumProgressViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(value: 0.4)
            .progressViewStyle(ScrumProgressViewStyle(theme: .buttercup))
            .previewLayout(.sizeThatFits)
    }
}
