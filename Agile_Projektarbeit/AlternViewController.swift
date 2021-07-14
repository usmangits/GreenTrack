
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
            ausEins.text = "Ausstoß C02 in t: \(test*0)"
            
            altZwei.text = "Alternative 2: Fahrrad"
            durchschnittZwei.text = "Durchschnittliche Zeit in min: \(test*3.52941)"
            ausZwei.text = "Ausstoß C02 in t: \(test*0)"
            
            altDrei.text = "Alternative 3: Auto"
            durchschnittDrei.text = "Durchschnittliche Zeit in min: \(test*0.46512 )"
            ausDrei.text = "Ausstoß C02 in t: \(test*0.00021)"
            
            altVier.text = "Alternative 4: Bahn"
            durchschnittVier.text = "Durchschnittliche Zeit in min: \(test*0.6)"
            ausVier.text = "Ausstoß C02 in t: \(test*0.00004)"
            
            altFuenf.text = "Alternative 5: Flugzeug"
            durchschnittFuenf.text = "Durchschnittliche Zeit in min: \(test*0.06667)"
            ausFuenf.text = "Ausstoß C02 in t: \(test*0.00025)"
        }
        else if (test > 5 && test <= 25)
        {
            zumtetLb.text = "Alternative 1: Fahrrad"
            durchschnittEins.text = "Durchschnittliche Zeit in min: \(test*3.52941)"
            ausEins.text = "Ausstoß C02 in t: \(test*0)"
            
            altZwei.text = "Alternative 2: Laufen"
            durchschnittZwei.text = "Durchschnittliche Zeit in min: \(test*13.33333)"
            ausZwei.text = "Ausstoß C02 in t: \(test*0)"
            
            altDrei.text = "Alternative 3: Auto"
            durchschnittDrei.text = "Durchschnittliche Zeit in min: \(test*0.46512)"
            ausDrei.text = "Ausstoß C02 in t: \(test*0.00021)"
            
            altVier.text = "Alternative 4: Bahn"
            durchschnittVier.text = "Durchschnittliche Zeit in min: \(test*0.6)"
            ausVier.text = "Ausstoß C02 in t: \(test*0.00004)"
            
            altFuenf.text = "Alternative 5: Flugzeug"
            durchschnittFuenf.text = "Durchschnittliche Zeit in min: \(test*0.06667)"
            ausFuenf.text = "Ausstoß C02 in t: \(test*0.00025)"
            
        }
        else if (test > 25 && test <= 300)
        {
            zumtetLb.text = "Alternative 1: Auto"
            durchschnittEins.text = "Durchschnittliche Zeit in min: \(test*0.46512)"
            ausEins.text = "Ausstoß C02 in t: \(test*0.00021)"
            
            altZwei.text = "Alternative 2: Bahn"
            durchschnittZwei.text = "Durchschnittliche Zeit in min: \(test*0.6)"
            ausZwei.text = "Ausstoß C02 in t: \(test*0.00004)"
            
            altDrei.text = "Alternative 3: Fahrrad"
            durchschnittDrei.text = "Durchschnittliche Zeit in min: \(test*3.52941)"
            ausDrei.text = "Ausstoß C02 in t: \(test*0)"
            
            altVier.text = "Alternative 4: Flugzeug"
            durchschnittVier.text = "Durchschnittliche Zeit in min: \(test*0.06667)"
            ausVier.text = "Ausstoß C02 in t: \(test*0.00025)"
            
            altFuenf.text = "Alternative 5: Laufen"
            durchschnittFuenf.text = "Durchschnittliche Zeit in min: \(test*13.33333)"
            ausFuenf.text = "Ausstoß C02 in t: \(test*0)"
        }
        else if (test > 300 && test <= 500)
        {
            zumtetLb.text = "Alternative 1: Bahn"
            durchschnittEins.text = "Durchschnittliche Zeit in min: \(test*0.6)"
            ausEins.text = "Ausstoß C02 in t: \(test*0.00004)"
            
            altZwei.text = "Alternative 2: Auto"
            durchschnittZwei.text = "Durchschnittliche Zeit in min: \(test*0.46512)"
            ausZwei.text = "Ausstoß C02 in t: \(test*0.00021)"
            
            altDrei.text = "Alternative 3: Flugzeug"
            durchschnittDrei.text = "Durchschnittliche Zeit in min: \(test*0.06667)"
            ausDrei.text = "Ausstoß C02 in t: \(test*0.00025)"
            
            altVier.text = "Alternative 4: Fahrrad"
            durchschnittVier.text = "Durchschnittliche Zeit in min: \(test*3.52941)"
            ausVier.text = "Ausstoß C02 in t: \(test*0)"
            
            altFuenf.text = "Alternative 5: Laufen"
            durchschnittFuenf.text = "Durchschnittliche Zeit in min: \(test*13.33333)"
            ausFuenf.text = "Ausstoß C02 in t: \(test*0)"
        }
        else if (test > 500)
        {
            zumtetLb.text = "Alternative 1: Flugzeug"
            durchschnittEins.text = "Durchschnittliche Zeit in min: \(test*0.06667)"
            ausEins.text = "Ausstoß C02 in t: \(test*0.00025)"
            
            altZwei.text = "Alternative 2: Bahn"
            durchschnittZwei.text = "Durchschnittliche Zeit in min: \(test*0.6)"
            ausZwei.text = "Ausstoß C02 in t: \(test*0.00004)"
            
            altDrei.text = "Alternative 3: Auto"
            durchschnittDrei.text = "Durchschnittliche Zeit in min: \(test*0.46512)"
            ausDrei.text = "Ausstoß C02 in t: \(test*0.00021)"
            
            altVier.text = "Alternative 4: Fahrrad"
            durchschnittVier.text = "Durchschnittliche Zeit in min: \(test*3.52941)"
            ausVier.text = "Ausstoß C02 in t: \(test*0)"
            
            altFuenf.text = "Alternative 5: Laufen"
            durchschnittFuenf.text = "Durchschnittliche Zeit in min: \(test*13.33333)"
            ausFuenf.text = "Ausstoß C02 in t: \(test*0)"
        }
    }
    
}
