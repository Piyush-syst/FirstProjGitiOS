//
//  AppDelegate.h
//  FirstProj
//
//  Created by macmini39 on 06/10/20.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
@import GoogleSignIn;
@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate>


@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

