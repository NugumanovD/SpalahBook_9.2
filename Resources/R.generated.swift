//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 0 images.
  struct image {
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 4 storyboards.
  struct storyboard {
    /// Storyboard `Auth`.
    static let auth = _R.storyboard.auth()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `Map`.
    static let map = _R.storyboard.map()
    
    /// `UIStoryboard(name: "Auth", bundle: ...)`
    static func auth(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.auth)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    /// `UIStoryboard(name: "Map", bundle: ...)`
    static func map(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.map)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 3 localization tables.
  struct string {
    /// This `R.string.auth` struct is generated, and contains static references to 11 localization keys.
    struct auth {
      /// ru translation: Button
      /// 
      /// Locales: ru
      static let tmiS7EZmNormalTitle = Rswift.StringResource(key: "tmi-s7-eZm.normalTitle", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: Hello there!
      /// 
      /// Locales: ru
      static let m3SLzLvmText = Rswift.StringResource(key: "m3S-lz-lvm.text", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: I am greate person!
      /// 
      /// Locales: ru
      static let r76F2TwtText = Rswift.StringResource(key: "R76-F2-twt.text", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: I don't have an account
      /// 
      /// Locales: ru
      static let wRPgFCENormalTitle = Rswift.StringResource(key: "6wR-Pg-FCE.normalTitle", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: LOGIN
      /// 
      /// Locales: ru
      static let ojo5eQoHNormalTitle = Rswift.StringResource(key: "OJO-5e-QoH.normalTitle", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: REGISTER
      /// 
      /// Locales: ru
      static let e4nWFXAnNormalTitle = Rswift.StringResource(key: "e4n-WF-XAn.normalTitle", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: email
      /// 
      /// Locales: ru
      static let sbqaSn2Placeholder = Rswift.StringResource(key: "0SB-QA-Sn2.placeholder", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: email
      /// 
      /// Locales: ru
      static let xiP9rZFKPlaceholder = Rswift.StringResource(key: "xiP-9r-ZFK.placeholder", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: name
      /// 
      /// Locales: ru
      static let l1HPCIIyPlaceholder = Rswift.StringResource(key: "l1H-PC-IIy.placeholder", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: password
      /// 
      /// Locales: ru
      static let mSIuFCXPlaceholder = Rswift.StringResource(key: "2mS-Iu-fCX.placeholder", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      /// ru translation: password
      /// 
      /// Locales: ru
      static let qsyNqY7aPlaceholder = Rswift.StringResource(key: "Qsy-Nq-Y7a.placeholder", tableName: "Auth", bundle: R.hostingBundle, locales: ["ru"], comment: nil)
      
      /// ru translation: Button
      /// 
      /// Locales: ru
      static func tmiS7EZmNormalTitle(_: Void = ()) -> String {
        return NSLocalizedString("tmi-s7-eZm.normalTitle", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: Hello there!
      /// 
      /// Locales: ru
      static func m3SLzLvmText(_: Void = ()) -> String {
        return NSLocalizedString("m3S-lz-lvm.text", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: I am greate person!
      /// 
      /// Locales: ru
      static func r76F2TwtText(_: Void = ()) -> String {
        return NSLocalizedString("R76-F2-twt.text", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: I don't have an account
      /// 
      /// Locales: ru
      static func wRPgFCENormalTitle(_: Void = ()) -> String {
        return NSLocalizedString("6wR-Pg-FCE.normalTitle", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: LOGIN
      /// 
      /// Locales: ru
      static func ojo5eQoHNormalTitle(_: Void = ()) -> String {
        return NSLocalizedString("OJO-5e-QoH.normalTitle", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: REGISTER
      /// 
      /// Locales: ru
      static func e4nWFXAnNormalTitle(_: Void = ()) -> String {
        return NSLocalizedString("e4n-WF-XAn.normalTitle", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: email
      /// 
      /// Locales: ru
      static func sbqaSn2Placeholder(_: Void = ()) -> String {
        return NSLocalizedString("0SB-QA-Sn2.placeholder", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: email
      /// 
      /// Locales: ru
      static func xiP9rZFKPlaceholder(_: Void = ()) -> String {
        return NSLocalizedString("xiP-9r-ZFK.placeholder", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: name
      /// 
      /// Locales: ru
      static func l1HPCIIyPlaceholder(_: Void = ()) -> String {
        return NSLocalizedString("l1H-PC-IIy.placeholder", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: password
      /// 
      /// Locales: ru
      static func mSIuFCXPlaceholder(_: Void = ()) -> String {
        return NSLocalizedString("2mS-Iu-fCX.placeholder", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: password
      /// 
      /// Locales: ru
      static func qsyNqY7aPlaceholder(_: Void = ()) -> String {
        return NSLocalizedString("Qsy-Nq-Y7a.placeholder", tableName: "Auth", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    /// This `R.string.launchScreen` struct is generated, and contains static references to 0 localization keys.
    struct launchScreen {
      fileprivate init() {}
    }
    
    /// This `R.string.localizable` struct is generated, and contains static references to 5 localization keys.
    struct localizable {
      /// Base translation: Error
      /// 
      /// Locales: Base, ru
      static let generalError = Rswift.StringResource(key: "general.error", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: Hello there!
      /// 
      /// Locales: Base, ru
      static let authGreating = Rswift.StringResource(key: "auth.greating", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: Login
      /// 
      /// Locales: Base, ru
      static let authLogin = Rswift.StringResource(key: "auth.login", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: Register
      /// 
      /// Locales: Base, ru
      static let authRegister = Rswift.StringResource(key: "auth.register", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: Warning
      /// 
      /// Locales: Base, ru
      static let generalWarning = Rswift.StringResource(key: "general.warning", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      
      /// Base translation: Error
      /// 
      /// Locales: Base, ru
      static func generalError(_: Void = ()) -> String {
        return NSLocalizedString("general.error", bundle: R.hostingBundle, value: "Error", comment: "")
      }
      
      /// Base translation: Hello there!
      /// 
      /// Locales: Base, ru
      static func authGreating(_: Void = ()) -> String {
        return NSLocalizedString("auth.greating", bundle: R.hostingBundle, value: "Hello there!", comment: "")
      }
      
      /// Base translation: Login
      /// 
      /// Locales: Base, ru
      static func authLogin(_: Void = ()) -> String {
        return NSLocalizedString("auth.login", bundle: R.hostingBundle, value: "Login", comment: "")
      }
      
      /// Base translation: Register
      /// 
      /// Locales: Base, ru
      static func authRegister(_: Void = ()) -> String {
        return NSLocalizedString("auth.register", bundle: R.hostingBundle, value: "Register", comment: "")
      }
      
      /// Base translation: Warning
      /// 
      /// Locales: Base, ru
      static func generalWarning(_: Void = ()) -> String {
        return NSLocalizedString("general.warning", bundle: R.hostingBundle, value: "Warning", comment: "")
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try main.validate()
      try auth.validate()
      try map.validate()
    }
    
    struct auth: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let loginStoryboardIdExample = StoryboardViewControllerResource<LoginViewController>(identifier: "LoginStoryboardIdExample")
      let name = "Auth"
      let registerViewController = StoryboardViewControllerResource<RegisterViewController>(identifier: "RegisterViewController")
      
      func loginStoryboardIdExample(_: Void = ()) -> LoginViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: loginStoryboardIdExample)
      }
      
      func registerViewController(_: Void = ()) -> RegisterViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: registerViewController)
      }
      
      static func validate() throws {
        if _R.storyboard.auth().registerViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'registerViewController' could not be loaded from storyboard 'Auth' as 'RegisterViewController'.") }
        if _R.storyboard.auth().loginStoryboardIdExample() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'loginStoryboardIdExample' could not be loaded from storyboard 'Auth' as 'LoginViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let mainViewController = StoryboardViewControllerResource<MainViewController>(identifier: "MainViewController")
      let name = "Main"
      
      func mainViewController(_: Void = ()) -> MainViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: mainViewController)
      }
      
      static func validate() throws {
        if _R.storyboard.main().mainViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'mainViewController' could not be loaded from storyboard 'Main' as 'MainViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    struct map: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let mapViewController = StoryboardViewControllerResource<MapViewController>(identifier: "MapViewController")
      let name = "Map"
      
      func mapViewController(_: Void = ()) -> MapViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: mapViewController)
      }
      
      static func validate() throws {
        if _R.storyboard.map().mapViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'mapViewController' could not be loaded from storyboard 'Map' as 'MapViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
