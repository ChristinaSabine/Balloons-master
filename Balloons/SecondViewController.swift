import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController {
    
//    let locationManager = CLLocationManager()
//    
//    locationManager.requestAlwaysAuthorization()
//    locationManager.delegate = self
//    
//    myMap.setUserTrackingMode(.Follow, animated: true)
//    
//    let bournemouthPier = CLLocationCoordinate2D(latitude: 50.716098, longitude: -1.875780)
//    let bournemouthPierRegion = CLCircularRegion(center: bournemouthPier, radius: 1000, identifier: "bournemouth")
//    locationManager.startMonitoringForRegion(bournemouthPierRegion)
    
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var MyMap: MKMapView!
    
    //these are my buttons to link to each page that has a diffrent news story on.

    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!

    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var button7: UIButton!
    
    @IBOutlet weak var button8: UIButton!
    
    @IBOutlet weak var button9: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //This is so the pin pionts show up on the map at each location.
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.719630), CLLocationDegrees(-1.878998))
            MyMap.addAnnotation(annotation)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.720024), CLLocationDegrees(-1.879815))
                MyMap.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.742315), CLLocationDegrees(-1.892151))
        MyMap.addAnnotation(annotation3)
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.715811), CLLocationDegrees(-1.874827))
        MyMap.addAnnotation(annotation4)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.715983), CLLocationDegrees(-1.875839))
        MyMap.addAnnotation(annotation5)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.726912), CLLocationDegrees(-1.865146))
        MyMap.addAnnotation(annotation6)
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.718003), CLLocationDegrees(-1.872337))
        MyMap.addAnnotation(annotation7)
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.738891), CLLocationDegrees(-1.869418))
        MyMap.addAnnotation(annotation8)
        
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2DMake(CLLocationDegrees(50.720760), CLLocationDegrees(-1.885116))
        MyMap.addAnnotation(annotation9)
        
        MyMap.setUserTrackingMode(.Follow, animated: false)
        
    }
}

extension SecondViewController: CLLocationManagerDelegate {
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let newLocation = locations.last
        
        if let newLocation = newLocation {
            print(newLocation)
        }
        
    }
    
}