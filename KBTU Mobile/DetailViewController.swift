//
//  DetailViewController.swift
//  KBTU Mobile
//
//  Created by Абзал Арстанов on 3/12/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var backGround: UIView!
    @IBOutlet weak var nameLabel: UILabel!
            
    @IBOutlet weak var descriptionText: UITextView!
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    var list: List? {
        didSet {
            refreshUI()
        }
    }
    
    private func refreshUI() {
        loadViewIfNeeded()
        nameLabel.text = list?.name
        descriptionText.text = list?.description
        iconImageView.image = list?.icon
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController: ListSelectionDelegate {
    func listSelected(_ newList: List) {
        list = newList
    }
}
