//
//  MainViewController.swift
//  HotReloadingExamples
//
//  Created by Dario Roa on 25/4/22.
//  
//

import UIKit

final class MainViewController: UIViewController {
    private let contentView = MainView()

    init() {
        super.init(nibName: nil, bundle: nil)
        title = "HotReloadingExamples"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
    }
}
