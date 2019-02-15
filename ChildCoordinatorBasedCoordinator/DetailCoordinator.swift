//
//  DetailCoordinator.swift
//  ChildCoordinatorBasedCoordinator
//
//  Created by jonathan.p.bijos on 12/02/19.
//  Copyright © 2019 jonathan.p.bijos. All rights reserved.
//

import UIKit

final class DetailCoordinator: Coordinator {
  var childCoordinators: [Coordinator] = []
  var navigationController: UINavigationController

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  deinit {
    print("DetailCoordinator deinit")
  }

  func start() {
    let vc = DetailViewController(coordinator: self)
    navigationController.pushViewController(vc, animated: true)
  }
}
