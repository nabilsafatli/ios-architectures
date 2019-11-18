import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(MyCustomTableViewCell.self, forCellReuseIdentifier: "MyCustomTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomTableViewCell", for: indexPath) as? MyCustomTableViewCell else {
            preconditionFailure("\(MyCustomTableViewCell.self) not found")
        }

        cell.labelTitle?.text = "Nabil"

        return cell
    }

}

