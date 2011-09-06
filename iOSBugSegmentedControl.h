//
//  iOSBugSegmentedControl.m
//  TrailBehind, Inc.
//
//  Created by Andrew L. Johnson on 9/5/11.
//  
//  A drop in subclass for UISegmentedControl to make setting selectedSegmentIndex call the selector under iOS 5, as it does in iOS 4



@interface iOSBugSegmentedControl : UISegmentedControl {

  id target;
  SEL action;

}

@end
