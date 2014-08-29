
import UIKit

class ViewController: UIViewController {
    
    // if this works, you'll see a list of people appear in the console

    @IBAction func doButton (sender:AnyObject!) {
        let url = NSBundle.mainBundle().URLForResource("folks", withExtension: "xml")!
        let parser = NSXMLParser(contentsOfURL: url)
        let people = MyPeopleParser(name:"", parent:nil)
        parser.delegate = people
        parser.parse()
        
        // ... done, do something with people.people ...
        println(people.people)
    }


}
