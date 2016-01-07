import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {

    @IBOutlet weak var imgOne: UIImageView!
    
    @IBOutlet weak var enterButton: UIButton!
 
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        
        let bournemouthPier = CLLocationCoordinate2D(latitude: 50.716098, longitude: -1.875780)
        
        let bournemouthPierRegion = CLCircularRegion(center: bournemouthPier, radius: 50, identifier: "Bournemouth")
        bournemouthPierRegion.notifyOnEntry = false
        bournemouthPierRegion.notifyOnExit = false
        locationManager.startMonitoringForRegion(bournemouthPierRegion)
        
        let boscombePier = CLLocationCoordinate2D(latitude: 50.719914, longitude: -1.843552)
        
        let boscombePierRegion = CLCircularRegion(center: boscombePier, radius: 50, identifier: "Boscombe")
        boscombePierRegion.notifyOnEntry = false
        boscombePierRegion.notifyOnExit = false
        locationManager.startMonitoringForRegion(boscombePierRegion)
    }
    
}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("Entering \(region.identifier)")
        
       self.enterButton.hidden = false
    }
    
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("Leaving \(region.identifier)")
        
        self.enterButton.hidden = true
    }
    
}