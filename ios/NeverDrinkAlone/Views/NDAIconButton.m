#import "NDAIconButton.h"

#import "NDAConstants.h"
#import "UIView+AYUtils.h"

@implementation NDAIconButton

#pragma mark Lifecycle

- (void)layoutSubviews {
  [super layoutSubviews];
  [self moveIconToRight];
}

#pragma mark Private

- (void)moveIconToRight {
  self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
  self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
  self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.width - kButtonIconSpacing / 2, 0, self.imageView.width + kButtonIconSpacing / 2);
  self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.width + kButtonIconSpacing / 2, 0, -self.titleLabel.width - kButtonIconSpacing / 2);
}

@end
