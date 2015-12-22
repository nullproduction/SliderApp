
import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellowColor()
        addPushButton()
        addShowHideButton()
    }
    
    func addPushButton() {
        let button = UIButton(frame: CGRectMake(10, 100, 70, 30))
        button.setTitle("Push", forState: .Normal)
        button.setTitleColor(UIColor.redColor(), forState: .Normal)
        button.addTarget(self, action: "push", forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }
    
    func addShowHideButton() {
        let button = UIButton(frame: CGRectMake(10, 150, 150, 30))
        button.setTitle("Show/Hide", forState: .Normal)
        button.setTitleColor(UIColor.redColor(), forState: .Normal)
        button.addTarget(self, action: "showHideBar", forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }
    
    func push() {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    func showHideBar() {
        self.navigationController?.navigationBarHidden = !(self.navigationController?.navigationBarHidden)!
    }
    
}

