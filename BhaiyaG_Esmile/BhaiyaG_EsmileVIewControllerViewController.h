//
//  BhaiyaG_EsmileVIewControllerViewController.h
//  BhaiyaG_Esmile
//
//  Created by nachi on 16/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIFormDataRequest.h"

@interface BhaiyaG_EsmileVIewControllerViewController : UIViewController <ASIHTTPRequestDelegate>{
    IBOutlet UITextField *textSearch;
    IBOutlet UIButton *btnSearch;
    
    NSString *searchText;
    NSString *urlString;    
    NSString *apiKey;
}

@property(nonatomic,retain) IBOutlet UITextField *textSearch;
@property(nonatomic,retain) IBOutlet UIButton *btnSearch;

- (void)startRequest;

@end
