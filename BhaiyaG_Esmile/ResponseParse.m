//
//  ResponseParse.m
//  BhaiyaG_Esmile
//
//  Created by nachi on 16/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ResponseParse.h"

@implementation ResponseParse


-(void)parse:(NSString *)outputResponse{
    
    Model *model = [[Model alloc]init];
    
    NSDictionary *dictionary =[outputResponse JSONValue];
    
        
    for(int i=0;i<[dictionary count];i++){
         NSString *strPhotos=[dictionary objectForKey:@"photos"];
        
        NSMutableArray *photoArray = [[NSMutableArray alloc]init];
        photoArray = [strPhotos valueForKey:@"photo"];
        
        for(NSDictionary *photoDictionary in photoArray){
           // model = [[Model alloc]init];
            model.photoId =[[photoDictionary objectForKey:@"id"]intValue];
            model.title = [photoDictionary objectForKey:@"title"];
            
            NSLog(@" id %d",model.photoId);
            NSLog(@" title %@",model.title);
        }
    }
    
}    

@end
