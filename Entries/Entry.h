//
//  Entry.h
//  Entries
//
//  Created by Derik Flanary on 1/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const titleKey = @"title";
static NSString *const contentKey = @"content";
static NSString *const dateCreatedKey = @"dateCreated";


@interface Entry : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSDate *dateCreated;

-(NSDictionary *)entryDictionary;
-(id)initWithDictionary:(NSDictionary *)dictionary;
@end
