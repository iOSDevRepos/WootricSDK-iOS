//
//  SurveyViewController+ConstraintsViewController.m
//  WootricSDK
//
//  Created by Łukasz Cichecki on 23/03/15.
//  Copyright (c) 2015 Wootric. All rights reserved.
//

#import "SurveyViewController+Constraints.h"

@implementation SurveyViewController (Constraints)

- (void)setupConstraints {
  [self setupBackgroundImageViewContraints];
  [self setupScrollViewConstraints];
  [self setupModalConstraint];
  [self setupDismissButtonConstraints];
  [self setupTitleLabelConstraints];
  [self setupVoteButtonConstraints];
  [self setupSliderConstraints];
  [self setupDragToChangeLabelConstraints];
  [self setupNotLikelyLabelConstraints];
  [self setupExtremelyLikelyLabelConstraints];
  [self setupSliderBackgroundViewConstraints];
  [self setupSliderCheckedBackgroundViewConstraints];
  [self setupScoreLabelConstraints];
  [self setupAskForFeedbackLabelConstraints];
  [self setupCommentTextViewConstraints];
  [self setupSendFeedbackButtonConstraints];
}

- (void)setupSendFeedbackButtonConstraints {
  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.sendFeedbackButton
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];

  NSLayoutConstraint *constY = [NSLayoutConstraint constraintWithItem:self.sendFeedbackButton
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.commentTextView
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:15];
  [self.modalView addConstraint:constY];
}

- (void)setupScoreLabelConstraints {
  NSLayoutConstraint *constTop = [NSLayoutConstraint constraintWithItem:self.scoreLabel
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.titleLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1
                                                               constant:5];
  [self.modalView addConstraint:constTop];

  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.scoreLabel
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.titleLabel
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];
}

- (void)setupAskForFeedbackLabelConstraints {
  NSLayoutConstraint *constTop = [NSLayoutConstraint constraintWithItem:self.askForFeedbackLabel
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.scoreLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1
                                                               constant:5];
  [self.modalView addConstraint:constTop];

  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.askForFeedbackLabel
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.titleLabel
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];
}

- (void)setupSliderCheckedBackgroundViewConstraints {
  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.sliderCheckedBackgroundView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];

  NSLayoutConstraint *constTop = [NSLayoutConstraint constraintWithItem:self.sliderCheckedBackgroundView
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.titleLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1
                                                               constant:41];
  [self.modalView addConstraint:constTop];

  CGFloat sliderWidth = [[UIScreen mainScreen] nativeBounds].size.height <= 1136 ? 290 : 345;
  NSLayoutConstraint *constW = [NSLayoutConstraint constraintWithItem:self.sliderCheckedBackgroundView
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:sliderWidth];
  [self.modalView addConstraint:constW];

  NSLayoutConstraint *constH = [NSLayoutConstraint constraintWithItem:self.sliderCheckedBackgroundView
                                                            attribute:NSLayoutAttributeHeight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:55];
  [self.modalView addConstraint:constH];
}


- (void)setupSliderBackgroundViewConstraints {
  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.sliderBackgroundView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];

  NSLayoutConstraint *constTop = [NSLayoutConstraint constraintWithItem:self.sliderBackgroundView
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.titleLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1
                                                               constant:41];
  [self.modalView addConstraint:constTop];

  CGFloat sliderWidth = [[UIScreen mainScreen] nativeBounds].size.height <= 1136 ? 290 : 345;
  NSLayoutConstraint *constW = [NSLayoutConstraint constraintWithItem:self.sliderBackgroundView
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:sliderWidth];
  [self.modalView addConstraint:constW];

  NSLayoutConstraint *constH = [NSLayoutConstraint constraintWithItem:self.sliderBackgroundView
                                                            attribute:NSLayoutAttributeHeight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:55];
  [self.modalView addConstraint:constH];
}

- (void)setupExtremelyLikelyLabelConstraints {
  NSLayoutConstraint *constY = [NSLayoutConstraint constraintWithItem:self.extremelyLikelyLabel
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.scoreSlider
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:10];
  [self.modalView addConstraint:constY];

  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.sliderBackgroundView
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.extremelyLikelyLabel
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:25];
  [self.modalView addConstraint:constX];
}

- (void)setupNotLikelyLabelConstraints {
  NSLayoutConstraint *constY = [NSLayoutConstraint constraintWithItem:self.notLikelyLabel
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.scoreSlider
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:10];
  [self.modalView addConstraint:constY];

  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.notLikelyLabel
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.sliderBackgroundView
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1
                                                             constant:25];
  [self.modalView addConstraint:constX];
}

- (void)setupDragToChangeLabelConstraints {
  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.dragToChangeLabel
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];

  NSLayoutConstraint *constY = [NSLayoutConstraint constraintWithItem:self.dragToChangeLabel
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.scoreSlider
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1
                                                             constant:-5];
  [self.modalView addConstraint:constY];
}

- (void)setupCommentTextViewConstraints {
  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.commentTextView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];

  NSLayoutConstraint *constY = [NSLayoutConstraint constraintWithItem:self.commentTextView
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.askForFeedbackLabel
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:35];
  [self.modalView addConstraint:constY];

  NSLayoutConstraint *constL = [NSLayoutConstraint constraintWithItem:self.commentTextView
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1
                                                             constant:15];
  [self.modalView addConstraint:constL];

  NSLayoutConstraint *constR = [NSLayoutConstraint constraintWithItem:self.modalView
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.commentTextView
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:15];
  [self.modalView addConstraint:constR];

  NSLayoutConstraint *constH = [NSLayoutConstraint constraintWithItem:self.commentTextView
                                                            attribute:NSLayoutAttributeHeight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:105];
  [self.commentTextView addConstraint:constH];
}

- (void)setupSliderConstraints {
  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.scoreSlider
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];

  NSLayoutConstraint *constTop = [NSLayoutConstraint constraintWithItem:self.scoreSlider
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.titleLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1
                                                               constant:45];
  [self.modalView addConstraint:constTop];

  CGFloat sliderWidth = [[UIScreen mainScreen] nativeBounds].size.height <= 1136 ? 274 : 329;
  NSLayoutConstraint *constW = [NSLayoutConstraint constraintWithItem:self.scoreSlider
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:sliderWidth];
  [self.modalView addConstraint:constW];

  NSLayoutConstraint *constH = [NSLayoutConstraint constraintWithItem:self.scoreSlider
                                                            attribute:NSLayoutAttributeHeight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:45];
  [self.modalView addConstraint:constH];
}

- (void)setupVoteButtonConstraints {
  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.voteButton
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.modalView addConstraint:constX];

  NSLayoutConstraint *constY = [NSLayoutConstraint constraintWithItem:self.voteButton
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.modalView
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:-65];
  [self.modalView addConstraint:constY];
}

- (void)setupTitleLabelConstraints {
  NSLayoutConstraint *constTop = [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.modalView
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1
                                                               constant:40];
  [self.modalView addConstraint:constTop];

  NSLayoutConstraint *constLeft = [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.modalView
                                                               attribute:NSLayoutAttributeLeft
                                                              multiplier:1
                                                                constant:60];
  [self.modalView addConstraint:constLeft];

  NSLayoutConstraint *constRight = [NSLayoutConstraint constraintWithItem:self.modalView
                                                                attribute:NSLayoutAttributeRight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.titleLabel
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1
                                                                 constant:60];
  [self.modalView addConstraint:constRight];
}

- (void)setupBackgroundImageViewContraints {
  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.backgroundImageView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constX];

  NSLayoutConstraint *constY = [NSLayoutConstraint constraintWithItem:self.backgroundImageView
                                                            attribute:NSLayoutAttributeCenterY
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeCenterY
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constY];

  NSLayoutConstraint *constW = [NSLayoutConstraint constraintWithItem:self.backgroundImageView
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeWidth
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constW];

  NSLayoutConstraint *constH = [NSLayoutConstraint constraintWithItem:self.backgroundImageView
                                                            attribute:NSLayoutAttributeHeight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeHeight
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constH];
}

- (void)setupDismissButtonConstraints {
  NSLayoutConstraint *constXTop = [NSLayoutConstraint constraintWithItem:self.dismissButton
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.modalView
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1
                                                                constant:284];
  [self.modalView addConstraint:constXTop];

  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.modalView
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.dismissButton
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:-5];
  [self.modalView addConstraint:constX];

  NSLayoutConstraint *constW = [NSLayoutConstraint constraintWithItem:self.dismissButton
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:80];
  [self.dismissButton addConstraint:constW];

  NSLayoutConstraint *constH = [NSLayoutConstraint constraintWithItem:self.dismissButton
                                                            attribute:NSLayoutAttributeHeight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:32];
  [self.dismissButton addConstraint:constH];
}

- (void)setupScrollViewConstraints {
  NSLayoutConstraint *constW = [NSLayoutConstraint constraintWithItem:self.scrollView
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeWidth
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constW];

  NSLayoutConstraint *constH = [NSLayoutConstraint constraintWithItem:self.scrollView
                                                            attribute:NSLayoutAttributeHeight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeHeight
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constH];

  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.scrollView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constX];

  NSLayoutConstraint *constY = [NSLayoutConstraint constraintWithItem:self.scrollView
                                                            attribute:NSLayoutAttributeCenterY
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeCenterY
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constY];
}

- (void)setupModalConstraint {
  NSLayoutConstraint *constW = [NSLayoutConstraint constraintWithItem:self.modalView
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeWidth
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constW];

  NSLayoutConstraint *constH = [NSLayoutConstraint constraintWithItem:self.modalView
                                                            attribute:NSLayoutAttributeHeight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:316];
  [self.modalView addConstraint:constH];

  NSLayoutConstraint *constX = [NSLayoutConstraint constraintWithItem:self.modalView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0];
  [self.view addConstraint:constX];

  NSLayoutConstraint *constB = [NSLayoutConstraint constraintWithItem:self.modalView
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.scrollView
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:0];
  [self.scrollView addConstraint:constB];

  self.constTopToModal = [NSLayoutConstraint constraintWithItem:self.modalView
                                                 attribute:NSLayoutAttributeTop
                                                 relatedBy:NSLayoutRelationEqual
                                                    toItem:self.scrollView
                                                 attribute:NSLayoutAttributeTop
                                                multiplier:1
                                                  constant:self.view.frame.size.height];

  [self.scrollView addConstraint:self.constTopToModal];

  NSLayoutConstraint *constL = [NSLayoutConstraint constraintWithItem:self.modalView
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.scrollView
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1
                                                             constant:0];
  [self.scrollView addConstraint:constL];

  NSLayoutConstraint *constR = [NSLayoutConstraint constraintWithItem:self.modalView
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.scrollView
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:0];
  [self.scrollView addConstraint:constR];
}

@end