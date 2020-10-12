//
//  main.m
//  FirstProj
//
//  Created by macmini39 on 06/10/20.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
//@import 'GoogleSignIn'
int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
        
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
//        [GIDSignIn sharedInstance].clientID = @"";
//         [GIDSignIn sharedInstance].delegate = self;
      
     
//          [[GIDSignIn sharedInstance] restorePreviousSignIn];

    }
   
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}


