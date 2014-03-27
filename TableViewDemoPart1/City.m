//
//  Cities.m
//  TableViewDemoPart1
//
//  Created by David Wells on 3/26/14.
//  Copyright (c) 2014 Ali Kooshesh. All rights reserved.
//

#import "City.h"

@interface City ()

@property(nonatomic) NSMutableDictionary *cityAttrs;

@end



@implementation City

-(id) initWithDictionary: (NSDictionary *) dictionary
{
	if( (self = [super init]) == nil )
		return nil;
	self.cityAttrs = [NSMutableDictionary dictionaryWithDictionary: dictionary];
	return self;
}

- (NSString *) cityName
{
    return [self.cityAttrs objectForKey:@"cityName"];
}


- (void) print
{
    NSLog(@"%@", self.cityAttrs);
}





@end
