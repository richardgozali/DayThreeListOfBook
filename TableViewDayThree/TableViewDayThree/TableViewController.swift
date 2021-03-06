//
//  TableViewController.swift
//  TableViewDayThree
//
//  Created by Richard G on 15/06/22.
//

import UIKit
import Alamofire
import AlamofireImage
class TableViewController: UITableViewController {
    func loadJson(filename fileName: String) -> [BookElement] {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let book = try JSONDecoder().decode([BookElement].self, from: data)
                return book
            } catch {
                print("error:\(error)")
            }
        }
        return []
    }
    var data : [BookElement] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        data = loadJson(filename: "book")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)as! BookCell

            cell.titleLabel?.text = data[indexPath.row].title
            cell.yearlabel?.text =  String(data[indexPath.row].pageCount ?? 0)
            cell.subtitleLabel?.text =  data[indexPath.row].authors![0]
        
        let url = URL(string: data[indexPath.row].thumbnailURL ??  "https://httpbin.org/image/png")!
            let placeholderImage = UIImage(named: "placeholder")

            cell.imageDetail.af.setImage(withURL: url, placeholderImage: placeholderImage)
            
            return cell
        }

        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "List Of Book"
        }
   

}
