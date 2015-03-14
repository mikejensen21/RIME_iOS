//
//  ConnectivityViewController.h
//  RIME
//
//  Created by Mike Jensen on 2015-03-09.
//  Copyright (c) 2015 Mike Jensen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCDAsyncUdpSocket.h"
#import "ConnectivityInfo.h"


@interface ConnectivityViewController : UIViewController

@property ConnectivityInfo *connectivityInfo;
@property GCDAsyncUdpSocket *udpSocket;


@end
