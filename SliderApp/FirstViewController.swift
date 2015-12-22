
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
        let button = UIButton(frame: CGRectMake(10, 150, 70, 30))
        button.setTitle("Hide", forState: .Normal)
        button.setTitleColor(UIColor.redColor(), forState: .Normal)
        button.addTarget(self, action: "hide", forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }
    
    func push() {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    func hide() {
        self.navigationController?.navigationBarHidden = true
        //self.navigationController!.interactivePopGestureRecognizer?.delegate = nil
        //self.navigationController!.interactivePopGestureRecognizer?.delegate = self.evo_drawerController
    }
    
}

