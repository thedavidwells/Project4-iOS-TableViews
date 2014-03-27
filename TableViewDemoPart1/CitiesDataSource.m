//
//  CitiesDataSource.m
//  TableViewDemoPart1
//
//  Created by David Wells on 3/26/14.
//  Copyright (c) 2014 Ali Kooshesh. All rights reserved.
//

#import "CitiesDataSource.h"
#import "City.h"

static BOOL _debug = NO;

@interface CitiesDataSource ()

@property(nonatomic) NSMutableArray *allCities;

@end


@implementation CitiesDataSource



-(instancetype) initWithJSONArray:(NSArray *)jsonArray
{
    if( (self = [super init]) == nil )
        return nil;
    
    _allCities = [[NSMutableArray alloc] init];
    for ( NSDictionary *cityTuple in jsonArray ) {
        City *city = [[City alloc] initWithDictionary:cityTuple];
        if( _debug) [city print];
        [self.allCities addObject: city];
    }
    return self;
}


-(City *) cityWithName: (NSString *) cityName
{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"cityName = %@", cityName];
    NSArray *city = [self.allCities filteredArrayUsingPredicate:predicate];
    return [city count] == 0 ? nil : [city objectAtIndex: 0];
}


-(NSMutableArray *) getAllCities
{
    return self.allCities;
}


-(City *) cityAtIndex: (int) idx
{
    return [self.allCities objectAtIndex:idx];
}


-(int) numberOfCities
{
    return [self.allCities count];
}


-(NSString *) cityTabBarTitle
{
    return @"Cities";
}


-(NSString *) cityTabBarImage
{
    return nil;
}


-(NSString *) cityBarButtonItemBackButtonTitle
{
    return @"Cities";
}


-(BOOL) deleteCityAtIndex: (NSInteger) idx
{
    // Need to preserve the referential integrity of the dataset.
    // Will have to cascade delete moives-at-theaters and showtimes.
    
    return NO;
}


-(void) print
{
    NSLog(@"Printing cities...");
    for( City *city in self.allCities )
        [city print];
    NSLog(@"Printing cities ends.");
}




@end
























