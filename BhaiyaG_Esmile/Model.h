//
//  Model.h
//  BhaiyaG_Esmile
//
//  Created by nachi on 16/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject{
    NSString *title;
    int photoId;
}

@property(nonatomic,retain)NSString *title;

@property(nonatomic)int photoId;

@end
