//
//  ___FILENAME___
//  ___PROJECTNAME___UI
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

public final class ___VARIABLE_ModuleName___ViewController: UIViewController {
    // MARK: Properties
    public var presenter: ___VARIABLE_ModuleName___EventHandler!

    // MARK: Lifecycle
    override public func viewDidLoad() {
        super.viewDidLoad()

        presenter.handleViewLoaded()
    }

    // MARK: Private

}

// MARK: IBActions
private extension ___VARIABLE_ModuleName___ViewController {
    //@objc func someAction() {
    //
    //}
}


extension ___VARIABLE_ModuleName___ViewController: ___VARIABLE_ModuleName___View {

}
