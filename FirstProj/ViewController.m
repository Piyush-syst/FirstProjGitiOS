//
//  ViewController.m
//  FirstProj
//
//  Created by macmini39 on 06/10/20.
//


//@import FBSDKLoginKit;
//@import FBSDKCoreKit;
#import "ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
@import GoogleSignIn;
@interface ViewController ()

@end


@implementation ViewController


- (void)viewDidLoad {
  [super viewDidLoad];
    //Google login
    [GIDSignIn sharedInstance].presentingViewController = self;
    
    [[GIDSignIn sharedInstance] restorePreviousSignIn];
  
    //--Google login--
    // Facebook login

    if ([FBSDKAccessToken currentAccessToken]){
        NSLog(@"FBTOken");
        ViewController2 *vc1=[[ViewController2 alloc]initWithNibName:@"ViewController2" bundle:nil];
        [self.navigationController pushViewController:vc1 animated:YES];
    }

       // User is logged in, do work such as go to next view controller.
    
    UIButton *myLoginButton=[UIButton buttonWithType:UIButtonTypeCustom];
      myLoginButton.backgroundColor=[UIColor darkGrayColor];
      myLoginButton.frame=CGRectMake(0,0,180,40);
      myLoginButton.center = self.view.center;
      [myLoginButton setTitle: @"My Login Button" forState: UIControlStateNormal];

      // Handle clicks on the button
      [myLoginButton
        addTarget:self
        action:@selector(loginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
     
      // Add the button to the view
      [self.view addSubview:myLoginButton];
   
//--Facebook Login


}
-(void)loginButtonClicked
{
  FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
  [login logInWithPermissions: @[@"public_profile"]
          fromViewController:self
                     handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
    if (error) {
      NSLog(@"Process error");
    } else if (result.isCancelled) {
      NSLog(@"Cancelled");
    } else {
        ViewController2 *vc = [[ ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
        [self.navigationController pushViewController:vc animated:YES];
      NSLog(@"Logged in");
       
    }
  }];
    
}

@end




