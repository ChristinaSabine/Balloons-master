import UIKit
import MapKit


class SecondViewController: UIViewController {
    
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
    
    let locationManager = CLLocationManager()
    
    //This is where I have set up the location for where you can open the application. When is this area/Users/Tina/Desktop/Balloons-master/Balloons/SecondViewController.swift you will see a ENTER button.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button1.hidden = true
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
        let bournemouthPier = CLLocationCoordinate2D(latitude: 50.716098, longitude: -1.875780)
        let bournemouthPierRegion = CLCircularRegion(center: bournemouthPier, radius: 100, identifier: "Bournemouth")
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
        
        self.button1.hidden = false
    }
    
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("Leaving \(region.identifier)")
        
        self.button1.hidden = true
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    
}
