//
//  ViewController.swift
//  TestAssignment
//
//  Created by Brijendra Dwivedi on 28/09/23.
//

import UIKit

enum VCType {
  case one, second
}

//protocol Action {
// func callDelegate()
//}

class ViewController: UIViewController {

  var viewModel = BaseViewModel()

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func firstButtonAction(_ sender: UIButton) {
    viewModel.type = .one
  }

  @IBAction func secondButtonAction(_ sender: UIButton) {
    viewModel.type = .second

  }
}

extension ViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    5
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: VCTableViewCell.reuseIdentifier, for: indexPath)
    return cell
  }
}
