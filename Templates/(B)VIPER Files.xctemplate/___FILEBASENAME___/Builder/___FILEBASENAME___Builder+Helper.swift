//
//  ___FILENAME___
//  ___PROJECTNAME___UI
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ___PROJECTNAME___Core

public extension ___VARIABLE_ModuleName___Builder {

    // Helper method to be used by ___VARIABLE_ModuleName___Builder implementers
    //
    // It contains all the boilerplate code for instantiating and connecting VIPER stack elements
    // It isn't complete solution for building this module though.
    // The missing pieces need to be passed as parameters here by implementers of `build___VARIABLE_ModuleName___()` protocol method
    // The example usage is like follows:
    // ```
    // func build___VARIABLE_ModuleName___(delegate: ___VARIABLE_ModuleName___Delegate? = nil) -> UIViewController {
    //     let dataManager = ___VARIABLE_ModuleName___DataManager()
    //
    //     return build___VARIABLE_ModuleName___(otherModulesBuilder: self, dataManager:dataManager, delegate:delegate)
    // }
    // ```
    //
    // @param otherModulesBuilder - a module may require routing to other modules, this is the builder that can make other modules,
    // usually it is the same object as implementer of `___VARIABLE_ModuleName___Builder`. It automatically infers the expected type
    // which is defined as the following typealias: ___VARIABLE_ModuleName___Router.OtherBuilders
    //
    // @param dataManager - since `___VARIABLE_ModuleName___Builder` is part of `___PROJECTNAME___UI` and we musn't have any dependency to `___PROJECTNAME___Data`
    // this has to be provided from outside. In theory this could be instantiated here. But that would introduce
    // UI -> Data dependency which will be a violation of The Clean Architecture boundaries
    //
    // @param delegate - delegate of this module
    //
    // INFO: last argument is a dummy variable which isn't expected to be passed
    // it is only to overcome current Swift limitations as we can't have generic method where the ___VARIABLE_ModuleName___RouterType is not used on the arguments list
    //
    public func build___VARIABLE_ModuleName___<___VARIABLE_ModuleName___RouterType:___VARIABLE_ModuleName___Router>(otherModulesBuilder: ___VARIABLE_ModuleName___RouterType.OtherBuilders, dataManager: ___VARIABLE_ModuleName___EntityGateway, delegate: ___VARIABLE_ModuleName___Delegate? = nil, _: ___VARIABLE_ModuleName___RouterType?=nil) -> UIViewController {
        let interactor = ___VARIABLE_ModuleName___Interactor()
        let presenter = ___VARIABLE_ModuleName___Presenter()
        let router = ___VARIABLE_ModuleName___RouterType()
        let viewController = ___VARIABLE_ModuleName___ViewController()

        router.builder = otherModulesBuilder
        interactor.dataManager = dataManager
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = viewController
        presenter.delegate = delegate
        interactor.output = presenter
        viewController.presenter = presenter

        return viewController
    }
}
