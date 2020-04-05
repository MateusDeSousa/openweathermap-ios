//
//  MapCustomView.swift
//  openweathermap-ios
//
//  Created by Mateus Sousa on 04/04/20.
//

import UIKit
import MapKit

class MapCustomView: UIView {
    
    let mapView: MKMapView = {
        let mapview = MKMapView()
        mapview.translatesAutoresizingMaskIntoConstraints = false
        return mapview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponentsOfView()
        buildConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("View MapCustomView not implemented initialize")
    }
    
    private func addComponentsOfView(){
        addSubview(mapView)
    }
    
    private func buildConstraints(){
        NSLayoutConstraint.activate([
            mapView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mapView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            mapView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
