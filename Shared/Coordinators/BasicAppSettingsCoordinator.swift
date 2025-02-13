//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation
import Stinsen
import SwiftUI

final class BasicAppSettingsCoordinator: NavigationCoordinatable {

    let stack = NavigationStack(initial: \BasicAppSettingsCoordinator.start)

    @Root
    var start = makeStart
    @Route(.push)
    var about = makeAbout

    @ViewBuilder
    func makeAbout() -> some View {
        AboutAppView()
    }

    @ViewBuilder
    func makeStart() -> some View {
        BasicAppSettingsView(viewModel: BasicAppSettingsViewModel())
    }
}
