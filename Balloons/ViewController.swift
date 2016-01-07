import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {

    @IBOutlet weak var imgOne: UIImageView!
    
    @IBOutlet weak var enterButton: UIButton!
 
    let locationManager = CLLocationManager()
    
    //This is where I have set up the location for where you can open the application. When is this area/Users/Tina/Desktop/Balloons-master/Balloons/SecondViewController.swift you will see a ENTER button.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterButton.hidden = true
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
        let bournemouthPier = CLLocationCoordinate2D(latitude: 50.716098, longitude: -1.875780)
        let bournemouthPierRegion = CLCircularRegion(center: bournemouthPier, radius: 100, identifier: "Bournemouth")
        locationManager.startMonitoringForRegion(bournemouthPierRegion)
    
    }
    
}

extension ViewController: CLLocationManagerDelegate {
    
    //The following code is to find the location and see weather it is entering or leaving the selected geocache. when entering the ENTER button should show, othertimes the button is hidden as you are unable to enter the app unless in the location. Also when you leave the location you are the kicked out of the application.
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
       //navigationController?.popToRootViewControllerAnimated(true)
    }
    
}