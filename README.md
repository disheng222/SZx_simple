# SZx_simple
Simple version for SZx

It should have the same compression ratio with SZx. 
It supports only float data type. 
The key compression and decompression codes are in szx_compress.c and szx_decompress.c, respectively. 


#Quick start

Build the project using 'make'. 

Then, run szx_compress and szx_decompress to test the codes using the example data file testfloat_8_8_128.dat. 

szx_compress testfloat_8_8_128.dat 64 1E-3
szx_decompress testfloat_8_8_128.dat.szx 8192


