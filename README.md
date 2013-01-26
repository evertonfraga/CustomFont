CustomFont
==========

Choose as many font families as you want, it'll pick the first available. iOS 6 workaround to not crash apps running 5.1


iOS 6 introduced some neat fonts, such as Avenir family, used in Apple Maps.
But when you're running an app in iOS < 6.0 it'll probably crash just because it doesn't have that font OR change it to an Helvetica Neue 18pt, which most of the time is undesirable.
CustomFont makes easy to choose step-fonts when the 1st option isn't available.

Just use fontsWithNameAndSize: passing a dictionary containing {fontName: fontSize}, and it'll return a UIFont. 
And you can reuse it at will.

Usage
-----

    UIFont *customFont = [CustomFont fontsWithNameAndSize:@{@"Avenir Next": @14.0f,
														    @"Helvetica Neue": @16.0f}];
    [self.loginButton.titleLabel setFont:customFont];
