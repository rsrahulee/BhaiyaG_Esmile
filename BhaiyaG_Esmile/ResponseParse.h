//
//  ResponseParse.h
//  BhaiyaG_Esmile
//
//  Created by nachi on 16/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSON.h"
#import "Model.h"

@interface ResponseParse : NSObject
//{
//    Model *model;
//}
//
//@property(nonatomic,retain)Model *model;

-(void)parse:(NSString *)outputResponse;
@end
