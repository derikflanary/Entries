//
//  Entry.m
//  Entries
//
//  Created by Derik Flanary on 1/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"


@implementation Entry



-(id)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        self.title = [dictionary objectForKey:titleKey];
        self.content = [dictionary objectForKey:contentKey];
        self.dateCreated = [dictionary objectForKey:dateCreatedKey];
        
    }
    return self;
}
-(NSDictionary *)entryDictionary{
    NSMutableDictionary *mutableEntry = [NSMutableDictionary dictionary];
    if (self.title) {
        [mutableEntry setValue:self.title forKey:titleKey];
    }
    if (self.content){
        [mutableEntry setValue:self.content forKey:contentKey];
    }
    if (self.dateCreated){
        [mutableEntry setValue:self.dateCreated forKey:dateCreatedKey];
    }
    return mutableEntry;
}

@end
