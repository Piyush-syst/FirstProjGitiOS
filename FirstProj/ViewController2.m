//
//  ViewController2.m
//  FirstProj
//
//  Created by macmini39 on 08/10/20.
//

#import "ViewController2.h"
#import "ViewController.h"
@import FBSDKCoreKit;
@interface ViewController2 ()

@end
@import GoogleSignIn;
@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIViewController *bbp=[[UIViewController alloc]initWithNibName:@"ViewController2" bundle:nil];
//    UINavigationController *passcodeNavigationController = [[UINavigationController alloc] initWithRootViewController:bbp];
    // [self.navigationController presentModalViewController:passcodeNavigationController animated:YES];
    
     
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)logout:(id)sender {
    [[GIDSignIn sharedInstance] disconnect];
    [FBSDKAccessToken setCurrentAccessToken:nil];
    [self.navigationController popViewControllerAnimated:YES];
//    ViewController *vc=[[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
//    [self.navigationController pushViewController:vc animated:YES];
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainOne" bundle:nil];
//    ViewController *detailViewController = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
//    [self.navigationController pushViewController:detailViewController animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
