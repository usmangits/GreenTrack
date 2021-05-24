
import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    @IBOutlet weak var verkehrsmittelOutlet: UISegmentedControl!
    @IBOutlet weak var streckeOutlet: UITextField!
    @IBOutlet weak var faktorOutlet: UILabel!
    @IBOutlet weak var ergOutlet: UILabel!
    
    
    
    
    
    @IBAction func Btrechnen(_ sender: UIButton) {
        
        let mittel = (verkehrsmittelOutlet.selectedSegmentIndex)
        
        let strecke = (streckeOutlet.text! as NSString).intValue
        
        var erg = 0.0
        var faktor = 0.00000
        
        if(mittel==0)
        {
            faktor = 0.00021
        }
        else if (mittel==1)
        {
            faktor = 0.00007
        }
        else if (mittel==2)
        {
            faktor = 0.00004
        }
        else if (mittel==3)
        {
            faktor = 0.00031
        }
        else if (mittel==4)
        {
            faktor = 0.00025
        }
        else if (mittel==5)
        {
            faktor = 0.00002
        }
        
        erg = faktor * Double(strecke)
        
        faktorOutlet.text = "Faktor für Ihre Auswahl: \(faktor)"
        ergOutlet.text = "Ergebnis in CO2 in t: \(erg)"
    }
    
    
    
}



