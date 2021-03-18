//
//  MasterViewController.swift
//  KBTU Mobile
//
//  Created by Абзал Арстанов on 3/12/21.
//

import UIKit

protocol ListSelectionDelegate: class {
    func listSelected(_ newList: List)
}

class MasterViewController: UITableViewController {
    weak var delegate: ListSelectionDelegate?
    let lists = [
        List(name: "KBTU", description: "The idea of ​​creating the Kazakh-British Technical University (KBTU) belongs to the former President of the Republic of Kazakhstan Nursultan Nazarbayev. As a result, a Memorandum of Understanding between the two countries was drawn up, signed in November 2000. The university's patron was British Prime Minister Tony Blair.", iconName: "logo", img: .main),
        List(name: "News", description: "On February 6, 2021, was held the first face-to-face meeting of the KBTU Rector with the Board of the KBTU ALUMNI Association.\nWithin the framework of the meeting, took place an extensive tour of laboratories and pavilions (Huawei, Emerson, Halyk Bank, Honeywell, etc.), visits to dean's offices and the opening of the office of the Alumni Association.", iconName: "news", img: .news),
        List(name: "Faculties", description: "Faculties of Geology and Geological Exploration\nFaculty of Energy and Oil & Gas Industry\nFaculty of Information Technologies\nFaculty of General Education\nBusiness School\nInternational School of Economics\nKazakhstan Maritime Academy\nSchool of Mathematics and Cybernetics\nSchool of Chemical Engineering\nCenter of Alternative Energy\nSEC MSCP", iconName: "faculties", img: .faculties),
        List(name: "Events", description: "Dear second-year students of KBTU, on August 28, an online meeting with the university leadership will be organized for you! The meeting will discuss the educational process in the fall semester, the change in the paradigm of education, online learning, student life and other issues. \nDate: 28.08. \nTime: 11:00. Platform: Microsoft Teams 365", iconName: "events", img: .events),
        List(name: "About us", description: "Every year since 2009 Kazakh-British Technical University (KBTU) has been ranked the best technical university of Central Asia by the Independent Kazakh Quality Assurance Agency for Education (IQQA).We aspire to become one of the top entrepreneurial institutions in the Eurasian region. Our main goal is to contribute in Kazakhstan’s scientific, entrepreneurial and economic development by preparing highly qualified and trained scholars, scientists and professionals.", iconName: "about", img: .about),
    ]
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedList = lists[indexPath.row]
        delegate?.listSelected(selectedList)
        
        if let detailViewController = delegate as? DetailViewController {
            splitViewController?.showDetailViewController(detailViewController, sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lists.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let list = lists[indexPath.row]
        cell.textLabel?.text = list.name
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
