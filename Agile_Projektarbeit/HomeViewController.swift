
import UIKit

class HomeViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func rechnerBT(_ sender: Any) {
        self.performSegue(withIdentifier: "ViewController", sender: self)
    }
    

    @IBAction func mapBT(_ sender: Any) {
        self.performSegue(withIdentifier: "MapViewController", sender: self)
    }
    
}
