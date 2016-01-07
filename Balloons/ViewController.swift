import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {

    @IBOutlet weak var imgOne: UIImageView!
    
    @IBOutlet weak var enterButton: UIButton!
 
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterButton.hidden = true
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
        let bournemouthPier = CLLocationCoordinate2D(latitude: 50.716098, longitude: -1.875780)
        let bournemouthPierRegion = CLCircularRegion(center: bournemouthPier, radius: 50, identifier: "Bournemouth")
        locationManager.startMonitoringForRegion(bournemouthPierRegion)
        
    }
    
}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let newLocation = locations.last
        
        if let newLocation = newLocation {
        
            print(newLocation)
        }
    }
    
    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("Entering \(region.identifier)")
        
       self.enterButton.hidden = false
    }
    
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("Leaving \(region.identifier)")
        
        self.enterButton.hidden = true
    }
    
}