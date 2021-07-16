
import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var karteVw: UIImageView!
    @IBOutlet weak var rechnerVw: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rechnerVw.image = UIImage(named: "rechner")
        karteVw.image = UIImage(named: "karte")
    }

    
    
    @IBAction func rechnerBT(_ sender: Any) {
        self.performSegue(withIdentifier: "ViewController", sender: self)
    }
    

    @IBAction func mapBT(_ sender: Any) {
        self.performSegue(withIdentifier: "MapViewController", sender: self)
    }
    
}
