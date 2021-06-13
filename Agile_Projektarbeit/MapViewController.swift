
import UIKit
import MapKit
import CoreLocation
import Foundation

class MapViewController: UIViewController, UISearchBarDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var mapOutlet: MKMapView!
    
    @IBOutlet weak var ortLb: UILabel!
    
    @IBAction func searchBt(_ sender: Any) {
        //Notwendig damit sich die Suche oeffnet wenn wir den Suchbutton klicken
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        present(searchController, animated: true, completion: nil)
    }
    
    
    //Distanzberechnung
    var ort = CLLocation()
    var ort2 = CLLocation()
    var alleOrte = Set<CLLocation>()
    var i=0
    var test = 0
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        self.view.addSubview(activityIndicator)
        
        //Hide search bar
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        
        //Create the search request
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchBar.text
        
        let activeSearch = MKLocalSearch(request: searchRequest)
        

        
        activeSearch.start{(response, errror) in
            
            activityIndicator.stopAnimating()
            UIApplication.shared.endIgnoringInteractionEvents()
            
            if response==nil
            {
                print("ERROR")
            }
            else {
               
                
                //Getting data
                let latitude = response?.boundingRegion.center.latitude
                let longitude = response?.boundingRegion.center.longitude
                
                //Distanzberechnung
                
                //self.ortLb.text = "Ort:\(ort)"
               //self.alleOrte.insert(self.ort)
                
                //Eigenes "Array"
               if(self.test == 0)
               {
                self.ort = CLLocation(latitude: latitude!, longitude: longitude!)
                    self.test = 1
                
                //Remove all annotations
                let annotations = self.mapOutlet.annotations
                self.mapOutlet.removeAnnotations(annotations)
                }
                else if (self.test == 1)
                {
                    self.ort2 = CLLocation(latitude: latitude!, longitude: longitude!)
                    let distanceInMeters = self.ort.distance(from: self.ort2)// result is in meters
                    self.ortLb.text = "Distanz: \(round(distanceInMeters/1000)) km"
                    
                    self.test = 0 //um Ort1 wieder zurückzusetzten
                }
                
                
                //Create annotation
                let annotation = MKPointAnnotation()
                annotation.title = searchBar.text
                annotation.coordinate = CLLocationCoordinate2DMake(latitude!, longitude!)
                self.mapOutlet.addAnnotation(annotation)
                
                //Zooming in on annotation
                let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude!, longitude!)
                let span = MKCoordinateSpan(latitudeDelta: 5.1, longitudeDelta: 5.1)
                let region = MKCoordinateRegion(center: coordinate, span: span)
                self.mapOutlet.setRegion(region, animated: true)

                }
            }

    }
    
    


}
