//
//  ViewController.swift
//  ChildCoordinatorBasedCoordinator
//
//  Created by jonathan.p.bijos on 12/02/19.
//  Copyright © 2019 jonathan.p.bijos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  unowned let coordinator: MainCoordinator

  init(coordinator: MainCoordinator) {
    self.coordinator = coordinator
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  deinit {
    print("ViewController deinit")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white

    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Click", for: .normal)
    button.setTitleColor(.black, for: .normal)

    view.addSubview(button)

    button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    button.addTarget(self, action: #selector(click), for: .touchUpInside)
  }

  @objc func click() {
    coordinator.goToDetailVC()
  }
}

