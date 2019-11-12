import UIKit

class ViewController: UIViewController {
    
    // MARK:- Outlets
    
    @IBOutlet var numberLabel: [UILabel]!
    @IBOutlet weak var suitStepper: UIStepper!
    @IBOutlet var suitImage: [UIImageView]!
    @IBOutlet weak var suitSegmentedController: UISegmentedControl!
        
    var suitNumbers: Int = 1 {
        didSet{
            for nums in numberLabel where suitNumbers < 14 {
                if suitNumbers == 11 {
                    nums.text = "J"
                } else if suitNumbers == 12 {
                    nums.text = "Q"
                } else if suitNumbers == 13 {
                    nums.text = "K"
                } else if suitNumbers == 1 {
                    nums.text = "A"
                } else if suitNumbers == 0 {
                    nums.text = ""
                } else {
                    nums.text = suitNumbers.description
                }
            }
        }
    }
    
    var currentSegmentIndex: Int = 0 {
        didSet {
            switch suitSegmentedController.selectedSegmentIndex {
            case 0:
                for imageView in suitImage {
                imageView.image = UIImage.init(systemName: "suit.spade.fill")
                }
            case 1:
                for imageView in suitImage {
                imageView.image = UIImage.init(systemName: "suit.heart.fill")
                }
            case 2:
                for imageView in suitImage {
                imageView.image = UIImage.init(systemName: "suit.club.fill")
                }
            case 3:
                for imageView in suitImage {
                imageView.image = UIImage.init(systemName: "suit.diamond.fill")
                }
            default:
                for imageView in suitImage {
                imageView.image = #imageLiteral(resourceName: "blue_back")
                }
                
            }
        }
    }
    
    func configureStepper() {
        suitStepper.minimumValue = 1
        suitStepper.maximumValue = 12
        suitStepper.stepValue = 1
        suitStepper.value = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentedButtonChange(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex
    }
    
    @IBAction func stepperButton(_ sender: UIStepper) {
        suitNumbers = Int(sender.value)
    }
}

