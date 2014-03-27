//
//  Cities.h
//  TableViewDemoPart1
//
//  Created by David Wells on 3/26/14.
//  Copyright (c) 2014 Ali Kooshesh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City: NSObject

-(id) initWithDictionary: (NSDictionary *) dictionary;

- (NSString *) cityName;

- (void) print;


@end
