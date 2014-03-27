//
//  CitiesDataSource.h
//  TableViewDemoPart1
//
//  Created by David Wells on 3/26/14.
//  Copyright (c) 2014 Ali Kooshesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DownloadAssistant.h"
#import "City.h"

@interface CitiesDataSource : NSObject

@property (nonatomic) BOOL dataReadyForUse;

-(instancetype) initWithJSONArray:(NSArray *) jsonArray;

-(City *) cityWithName: (NSString *) cityName;
-(NSMutableArray *) getAllCities;
-(City *) cityAtIndex: (int) idx;
-(int) numberOfCities;
-(NSString *) cityTabBarTitle;
-(NSString *) cityTabBarImage;
-(NSString *) cityBarButtonItemBackButtonTitle;
-(BOOL) deleteCityAtIndex: (NSInteger) idx;
-(void) print;


@end
