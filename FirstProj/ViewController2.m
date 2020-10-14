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
@property (weak, nonatomic) IBOutlet UILabel *name;


@end
@import GoogleSignIn;
@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Name%@",self.userName);
    [self.name setText:self.userName];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)logout:(id)sender {
    [[GIDSignIn sharedInstance] disconnect];
    [FBSDKAccessToken setCurrentAccessToken:nil];
    [self.navigationController popViewControllerAnimated:YES];

}



@end
