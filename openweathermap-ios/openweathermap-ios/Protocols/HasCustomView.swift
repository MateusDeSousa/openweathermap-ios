//
//  HasCustomView.swift
//  openweathermap-ios
//
//  Created by Mateus Sousa on 04/04/20.
//

import UIKit

protocol HasCustomView {
    associatedtype CustomView: UIView
}

extension HasCustomView where Self: UIViewController{
    internal var customView: CustomView {
        guard let customView = view as? CustomView else{
            fatalError("Expected view to be of type \(CustomView.self)")
        }
        return customView
    }
}
