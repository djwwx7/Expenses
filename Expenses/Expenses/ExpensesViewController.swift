//
//  ExpensesViewController.swift
//  Expenses
//
//  Created by Cody Whitaker on 6/8/18.
//  Copyright © 2018 Cody Whitaker. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    struct Expenses {
        var title : String
        var amount : Double
        var date : String
    }
    
    var theExpenses = [Expenses(title: "Dinner", amount: 32.50, date: "June 1, 2018 12:17"),
                       Expenses(title: "Office Supplies", amount: 59.34, date: "May 30, 2018, 12:17"),
                       Expenses(title: "Uber", amount: 16.23, date: "May 30, 2018 11:43"),
                       Expenses(title: "Coffee", amount: 3.95, date: "May 29, 2018 8:45")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theExpenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath)
        
        cell.textLabel?.text = theExpenses[indexPath.row].title
        cell.textLabel?.text = theExpenses[indexPath.row].amount
        cell.textLabel?.text = theExpenses[indexPath.row].date
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
