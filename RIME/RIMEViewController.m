//
//  RIMEViewController.m
//  RIME
//
//  Created by Mike Jensen on 2015-03-09.
//  Copyright (c) 2015 Mike Jensen. All rights reserved.
//

#import "RIMEViewController.h"
#import "AsyncUdpSocket.h"
#import "CocoaOSC.h"
#import "CoreDataHelper.h"

@interface RIMEViewController ()

@end

@implementation RIMEViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.connection = [[OSCConnection alloc] init];
    self.connection.delegate = self;
    
    NSError *error;
    if (![self.connection bindToAddress:nil port:11000 error:&error])
    {
        NSLog(@"Could not bind UDP connection: %@", error);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slider1:(UISlider *)sender {
    OSCMutableMessage *message = [[OSCMutableMessage alloc] init];
    message.address = @"/slider1";
    [message addFloat:sender.value];
    [self.connection sendPacket:message toHost:@"127.0.0.1" port:12000];
    [message release];
}

- (IBAction)slider2:(UISlider *)sender {
    OSCMutableMessage *message = [[OSCMutableMessage alloc] init];
    message.address = @"/slider2";
    [message addFloat:sender.value];
    [self.connection sendPacket:message toHost:@"127.0.0.1" port:12000];
    [message release];
}
- (IBAction)slider3:(UISlider *)sender {
    OSCMutableMessage *message = [[OSCMutableMessage alloc] init];
    message.address = @"/slider3";
    [message addFloat:sender.value];
    [self.connection sendPacket:message toHost:@"127.0.0.1" port:12000];
    [message release];
}
- (IBAction)slider4:(UISlider *)sender {
    OSCMutableMessage *message = [[OSCMutableMessage alloc] init];
    message.address = @"/slider4";
    [message addFloat:sender.value];
    [self.connection sendPacket:message toHost:@"127.0.0.1" port:12000];
    [message release];
}
- (IBAction)button1:(id)sender {
    OSCMutableMessage *message = [[OSCMutableMessage alloc] init];
    [message addString:@"Button1"];
    [self.connection sendPacket:message toHost:@"127.0.0.1" port:12000];
    [message release];
}
- (IBAction)button2:(id)sender {
    OSCMutableMessage *message = [[OSCMutableMessage alloc] init];
    [message addString:@"Button2"];
    [self.connection sendPacket:message toHost:@"127.0.0.1" port:12000];
    [message release];
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
