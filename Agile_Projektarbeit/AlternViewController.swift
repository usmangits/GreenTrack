
import UIKit

class AlternViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var zumtetLb: UILabel!
    @IBOutlet weak var durchschnittEins: UILabel!
    @IBOutlet weak var ausEins: UILabel!
    
    @IBOutlet weak var altZwei: UILabel!
    @IBOutlet weak var durchschnittZwei: UILabel!
    @IBOutlet weak var ausZwei: UILabel!
    
    
    @IBOutlet weak var altDrei: UILabel!
    @IBOutlet weak var durchschnittDrei: UILabel!
    @IBOutlet weak var ausDrei: UILabel!
    
    
    @IBOutlet weak var altVier: UILabel!
    @IBOutlet weak var durchschnittVier: UILabel!
    @IBOutlet weak var ausVier: UILabel!
    
    
    @IBOutlet weak var altFuenf: UILabel!
    @IBOutlet weak var durchschnittFuenf: UILabel!
    @IBOutlet weak var ausFuenf: UILabel!
    
    
    
    var test = MyVariables.globStrecke
    
    @IBAction func anzeigenBt(_ sender: UIButton) {
        
        if(test <= 5)
        {
            
            zumtetLb.text = "Alternative 1: Laufen"
            durchschnittEins.text = "Durchschnittliche Zeit in min: \(test*13.33333)"
            ausEins.text = "Ausstoß C02 in t: 0"
            
            altZwei.text = "Alternative 2: Fahrrad"
            durchschnittZwei.text = "Durchschnittliche Zeit in min: \(test*3.52941)"
            ausZwei.text = "Ausstoß C02 in t: 0"
            
            altDrei.text = "Alternative 3: Auto"
            durchschnittDrei.text = "Durchschnittliche Zeit in min: \(test*13.33333)"
            ausDrei.text = "Ausstoß C02 in t: 0"
            
            altVier.text = "Alternative 4: Bahn"
            durchschnittVier.text = "Durchschnittliche Zeit in min: \(test*0.6)"
            ausVier.text = "Ausstoß C02 in t: 0"
            
            altFuenf.text = "Alternative 5: Flugzeug"
            durchschnittFuenf.text = "Durchschnittliche Zeit in min: \(test*0.46512)"
            ausFuenf.text = "Ausstoß C02 in t: 0"
        }
        else if (test > 5 && test <= 25)
        {
            zumtetLb.text = "Alternative 2: Fahrrad"
        }
        else if (test > 25 && test <= 300)
        {
            zumtetLb.text = "Alternative 3: Auto"
        }
        else if (test > 300 && test <= 500)
        {
            zumtetLb.text = "Alternative 4: Bahn"
        }
        else if (test > 500)
        {
            zumtetLb.text = "Alternative 5: Flugzeug"
        }
    }
    
}
