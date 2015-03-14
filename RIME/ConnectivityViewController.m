//
//  ConnectivityViewController.m
//  RIME
//
//  Created by Mike Jensen on 2015-03-09.
//  Copyright (c) 2015 Mike Jensen. All rights reserved.
//

#import "GCDAsyncUdpSocket.h"
#import "ConnectivityViewController.h"



@interface ConnectivityViewController ()

@property (assign, nonatomic) IBOutlet UITextField *ipAddressTextField;
@property (assign, nonatomic) IBOutlet UITextField *portAddressTextField;

@end

@implementation ConnectivityViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //Load default data server and ping it
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)connectButton:(UIButton *)sender {
    
    NSLog(@"Connection Button Pressed!");
    
    
    
    
    if(self.ipAddressTextField.text.length > 0){
        if(self.portAddressTextField.text.length > 0) {
            self.connectivityInfo = [[ConnectivityInfo alloc] init];
            self.connectivityInfo.ipAddress = self.ipAddressTextField.text;
            self.connectivityInfo.portAddress = self.portAddressTextField.text;
            
            NSLog(@"IP Address: %@, Port: %@", self.connectivityInfo.ipAddress, self.connectivityInfo.portAddress);
            
        }
    }
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
