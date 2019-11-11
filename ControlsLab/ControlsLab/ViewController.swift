import UIKit

class ViewController: UIViewController {
    
    // MARK:- Outlets
    
    @IBOutlet weak var suitView: UIImageView!
    @IBOutlet weak var suitSegementedController: UISegmentedControl!
    @IBOutlet weak var suitStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var currentSegmentIndex: Int = 0 {
        didSet {
            switch suitSegementedController.selectedSegmentIndex {
            case 0:
                suitView.image = #imageLiteral(resourceName: "2S")
            case 1:
                suitView.image = #imageLiteral(resourceName: "2H")
            case 2:
                suitView.image = #imageLiteral(resourceName: "2C")
            case 3:
                suitView.image = #imageLiteral(resourceName: "2D")
            default:
                suitView.image = #imageLiteral(resourceName: "blue_back")
                
            }
        }
    }
    
    @IBAction func segmentedButtonChange(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex
    }
    
}

