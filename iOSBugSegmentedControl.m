//
//  iOSBugSegmentedControl.m
//  TrailBehind, Inc.
//
//  Created by Andrew L. Johnson on 9/5/11.
//  
//  A drop in subclass for UISegmentedControl to make setting selectedSegmentIndex call the selector under iOS 5, as it does in iOS 4

#import "iOSBugSegmentedControl.h"

@implementation iOSBugSegmentedControl


- (void) dealloc {
  [target release];
  target = nil;
  action = nil;
  [super dealloc];
}


- (void) setSelectedSegmentIndex:(NSInteger)selectedSegmentIndex {
  [super setSelectedSegmentIndex:selectedSegmentIndex];
  double iOSVersion = [[UIDevice currentDevice].systemVersion doubleValue];
  if (iOSVersion >= 5.0) {
    [target performSelector:action withObject:self];
  }
}
     

- (void) addTarget:(id)t action:(SEL)a forControlEvents:(UIControlEvents)controlEvents {
  [super addTarget:t action:a forControlEvents:controlEvents];
  [target release];
  target = [t retain];
  action = a;
}



@end
