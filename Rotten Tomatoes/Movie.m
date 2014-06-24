//
//  Movie.m
//  Rotten Tomatoes
//
//  Created by Billy Roh on 6/24/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[@"title"];
        self.mpaaRating = dictionary[@"mpaa_rating"];
        self.synopsis = dictionary[@"synopsis"];
        self.posterThumbUrl = dictionary[@"posters"][@"thumbnail"];
        self.posterUrl = dictionary[@"posters"][@"original"];
        self.year = [dictionary[@"year"] intValue];
        self.criticsScore = [dictionary[@"ratings"][@"critics_score"] intValue];
        self.audienceScore = [dictionary[@"ratings"][@"audience_score"] intValue];
    }
    return self;
}

@end
