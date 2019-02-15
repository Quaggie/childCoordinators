//
//  DetailViewController.swift
//  ChildCoordinatorBasedCoordinator
//
//  Created by jonathan.p.bijos on 12/02/19.
//  Copyright © 2019 jonathan.p.bijos. All rights reserved.
//

import UIKit

final class DetailViewController: UIViewController {
  unowned let coordinator: DetailCoordinator

  init(coordinator: DetailCoordinator) {
    self.coordinator = coordinator
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  deinit {
    print("DetailVC deinit")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
  }
}

