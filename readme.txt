ExploreCustomButton
===================

We require a non standard layout of the image and title text added to
a UIButton. By default the image and title are touching and collectively
centred. See Figure 1. Compare with the desired layout shown in figure 2.

Figure 1                              Figure 2

         1         2         3                 1         2         3
1234567890123456789012345678901234    1234567890123456789012345678901234

+--------------------------------+    +--------------------------------+
|                                |    |p                               |
|          +---++-----+          |    |p+---+         +-----+          |
|          | i ||title|          |    |p| i |         |title|          |
|          +---++-----+          |    |p+---+         +-----+          |
|                                |    |p                               |
+--------------------------------+    +--------------------------------+

button width = 34                     p (padding)  =  1
image width  =  5
title width  =  7

eg. original gap on each side is (34 - 5 - 7) / 2 = 11 

The image in Figure 2 is left aligned with a padding value and the title
is centred within the remaining width.

UIButton manages it's subviews in an opaque way and any attempts to position
your own added custom image or title subviews appear to get overridden.
The only mechanism for positioning the standard image and title components
is with the setImageEdgeInsets and setTitleEdgeInsets UIButton methods.

The solution then is to calculate a shift for the image that represents
the difference between the horizontal positions of the image
in Figures 1 and 2. Similarly, calculate the shift for the title too and
apply those with the methods mentioned above.

Note that with setImageEdgeInsets and setTitleEdgeInsets when we reduce 
the left inset, we also increase the right inset by the same amount. This
is so that we don't cause the effective content width to increase. If it
did increase, the text or image would become centred within the generated
slack and our desired position would not be achieved.


This app is distributed under the terms of the MIT License.
===========================================================
Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
