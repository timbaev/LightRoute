//
//  CloseTransitionStyle.swift
//  LightRoute-iOS
//
//  Created by Timur Shafigullin on 01/03/2020.
//  Copyright © 2020 WebAnt. All rights reserved.
//

import Foundation

/// Responds style how controller will be close.
public enum CloseTransitionStyle {

    // MARK: - Nested Types

    /// Responds transition case how navigation controller will be close.
    public enum NavigationStyle {

        // MARK: - Enumeration Cases

        /// Make pop to view controller for you controller.
        case pop(to: UIViewController)

        /// Make default pop on one controller back.
        case simplePop

        /// Make pop to root action.
        case toRoot

        /// Return you to finded controller in navigation stack.
        /// - Note: Fot this style, you should be complete method `find(pop:)`
        case findedPop
    }

    // MARK: - Enumeration Cases

    /// Make default dismiss controller action.
    case `default`

    /// Make custom navigation controller close action.
    case navigation(style: NavigationStyle)
}
