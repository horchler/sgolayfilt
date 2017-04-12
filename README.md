sgolayfilt
========
##### Savitzky-Golay differentiation filters &ndash; Matlab.
###### Version 1.0, 4-7-16
##### Download Repository: [ZIP Archive](https://github.com/horchler/sgolayfilt/archive/master.zip)

--------

[```sgolayfilt```](https://github.com/horchler/sgolayfilt/blob/master/sgolayfilt.m) is a replacement for Matlab's [```sgolay```](http://www.mathworks.com/help/signal/ref/sgolay.html) function that just calculates and returns the differentiation filters. The result is 2&ndash;4 times faster.

```sgolayfilt(K,F)``` returns the matrix of differentiation filters. The polynomial order, ```K```, must be a integer less than window size, ```F```, which must be an odd integer. If the polynomial order, ```K```, equals ```F-1```, no smoothing will occur. Each of the ```K+1``` columns of the output is a differentiation filter for derivatives of order ```P-1``` where ```P``` is the column index.
&nbsp;  

--------

Andrew D. Horchler, *horchler @ gmail . com*, [biorobots.case.edu](http://biorobots.case.edu/)  
Created: 12-16-11, Revision: 1.0, 4-7-16  

This version tested with Matlab 9.0.0.341360 (R2016a)  
Mac OS X 10.11.4 (Build: 15E65), Java 1.7.0_75-b13  
Compatibility maintained back through Matlab 7.4 (R2007a)  
&nbsp;  

--------

Copyright &copy; 2011&ndash;2017, Andrew D. Horchler  
All rights reserved.  

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * Neither the name of Case Western Reserve University nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL ANDREW D. HORCHLER BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.