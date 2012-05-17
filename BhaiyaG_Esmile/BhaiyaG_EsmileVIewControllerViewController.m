//
//  BhaiyaG_EsmileVIewControllerViewController.m
//  BhaiyaG_Esmile
//
//  Created by nachi on 16/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BhaiyaG_EsmileVIewControllerViewController.h"

#import "Model.h"

#import "ResponseParse.h"


@implementation BhaiyaG_EsmileVIewControllerViewController

@synthesize textSearch,btnSearch;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
   
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;  
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



-(void)createUrl{    
    apiKey = @"2de1c1bcb4a0fa6eb62be7446d4b9f45";
    
    searchText = textSearch.text;  
    
    urlString = [NSString stringWithFormat:
     @"http://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=%@&tags=%@&per_page=25&format=json&nojsoncallback=1", apiKey, searchText];
    
    NSLog(@"url-------------%@",urlString);
}

-(void)requestUrl:(NSString*)urlStrings{    
    
    NSURL *url =[NSURL URLWithString:urlStrings];
    ASIHTTPRequest *asihttpRequest = [ASIHTTPRequest requestWithURL:url];
    
    [asihttpRequest setDelegate:self];
    [asihttpRequest startAsynchronous];    
}

- (void)startRequest {
    [self requestUrl: urlString];
}

- (void)requestFinished:(ASIHTTPRequest*)request {
    NSString *requestOutput = [request responseString];
    
    NSLog(@"output---------------%@",requestOutput);
    
   // NSArray *contentJson=[requestOutput S]
    
//    Model *model=[[Model alloc]init];
//    [Model getResponse:requestOutput];
    
    ResponseParse *respParse = [[ResponseParse alloc]init];
    [respParse parse: requestOutput];
    
}


-(IBAction)onSearchClick:(id)sender{
    [self createUrl];
    [self startRequest];
}

- (void)dealloc {    
    [super dealloc];
    [textSearch release];
    [btnSearch release];
}

@end
