//
//  BusinessMap.swift
//  Explore-around
//
//  Created by Tayami Rai on 16/10/2023.
//

import SwiftUI
import MapKit

struct BusinessMap: UIViewRepresentable{
    
    @EnvironmentObject var model: ContentModel
    
    var locations: [MKPointAnnotation]{
        var annotations = [MKPointAnnotation]()
        
        for business in model.restaurants + model.sights{
            
            if let lat = business.coordinates?.latitude, let long = business.coordinates?.longitude{
                let a = MKPointAnnotation()
                a.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
                a.title = business.name ?? ""
                annotations.append(a)
            }
        }
        return annotations
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .followWithHeading
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        uiView.removeAnnotations(uiView.annotations)
        
        uiView.showAnnotations(self.locations, animated: true)
    }
    
    static func dismantleUIView(_ uiView: MKMapView, coordinator: ()) {
        uiView.removeAnnotations(uiView.annotations)
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    class Coordinator: NSObject, MKMapViewDelegate{
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            
            if annotation is MKUserLocation{
                return nil
            }
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: Constants.annotationReuseId)
            
            if annotationView == nil {
                annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: Constants.annotationReuseId)
                annotationView!.canShowCallout = true
                annotationView!.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            } else {
                // We got a reusable one
                
                annotationView!.annotation = annotation
            }

            return annotationView
        }
    }
}
