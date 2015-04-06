#import "RCTLinearGradient.h"
#import "RCTConvert.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@implementation RCTLinearGradient

+ (Class)layerClass
{
  return [CAGradientLayer class];
}

- (CAGradientLayer *)gradientLayer
{
  return (CAGradientLayer *)self.layer;
}

- (void)setColors:(NSArray *)colorStrings
{
  NSMutableArray *colors = [NSMutableArray arrayWithCapacity:colorStrings.count];
  for (NSString *colorString in colorStrings) {
    [colors addObject:[RCTConvert UIColor:colorString].CGColor];
  }
  self.gradientLayer.colors = colors;
}

- (void)setStart:(NSArray *)start
{
  self.gradientLayer.startPoint = [RCTConvert CGPoint:start];
}

- (void)setEnd:(NSArray *)end
{
  self.gradientLayer.endPoint = [RCTConvert CGPoint:end];
}

- (void)setLocations:(NSArray *)locations
{
  self.gradientLayer.locations = locations;
}

@end
