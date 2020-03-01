//
//  TransitionStyle.swift
//  LightRoute-iOS
//
//  Created by Timur Shafigullin on 01/03/2020.
//  Copyright © 2020 WebAnt. All rights reserved.
//

import Foundation

/// Establishes liability for the current transition.
public enum TransitionStyle {

    // MARK: - Nested Types

    /// This type is responsible for transition case how modal presentation will be add transition on view.
    public typealias ModalStyle = (transition: UIModalTransitionStyle, presentation: UIModalPresentationStyle)

    // MARK: -

    /// Responds transition case how split controller will be add transition on view.
    public enum SplitStyle {

        // MARK: - Enumeration Cases

        /// This case performs that current transition will be show like detail.
        case detail

        /// This case performs that current transition will be show by default.
        case `default`
    }

    // MARK: -

    /// Responds transition case how navigation controller will be add transition on navigation stack.
    public enum NavigationStyle {

        /// This case performs that current transition must be push.
        case push

        /// This case performs that current transition must be pop.
        case pop

        /// This case performs that current transition must be present.
        case present
    }

    // MARK: - Enumeration Cases

    /// This case performs that current transition must be add to navigation completion stack.
    case navigation(style: NavigationStyle)

    /// This case performs that current transition must be add like split presentation.
    case split(style: SplitStyle)

    /// This case performs that current transition must be add to navigation completion stack.
    case modal(style: ModalStyle)

    /// This case performs that current transition must be presented from initiated view controller.
    case `default`
}
