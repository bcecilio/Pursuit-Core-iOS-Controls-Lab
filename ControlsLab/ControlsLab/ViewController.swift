import UIKit

class ViewController: UIViewController {
    
    // MARK:- Outlets
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var suitSegementedController: UISegmentedControl!
    @IBOutlet weak var suitStepper: UIStepper!
    @IBOutlet weak var suitImage: UIImageView!
    
    var suitNumbers: Int = 2 {
        didSet {
            numberLabel.text = "\(suitStepper.value)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var currentSegmentIndex: Int = 0 {
        didSet {
            switch suitSegementedController.selectedSegmentIndex {
            case 0:
                suitImage.image = UIImage.init(systemName: "suit.spade.fill")
            case 1:
                suitImage.image = UIImage.init(systemName: "suit.heart.fill")
            case 2:
                suitImage.image = UIImage.init(systemName: "suit.club.fill")
            case 3:
                suitImage.image = UIImage.init(systemName: "suit.diamond.fill")
            default:
                suitImage.image = #imageLiteral(resourceName: "blue_back")
                
            }
        }
    }
    
    func configureStepper() {
        suitStepper.minimumValue = 1
        suitStepper.maximumValue = 12
        suitStepper.stepValue = 1
        suitStepper.value = 2
    }
    
    @IBAction func segmentedButtonChange(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex
    }
    
    @IBAction func stepperButton(_ sender: UIStepper) {
        suitNumbers = Int(sender.value)
    }
}

