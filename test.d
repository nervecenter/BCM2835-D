// Test program for bcm2835 library
// You can only expect this to run correctly
// as root on Raspberry Pi hardware, but it will compile and run with little effect
// on other hardware
//
// Author: Mike McCauley
// Copyright (C) 2011-2013 Mike McCauley
// $Id: test.c,v 1.5 2015/03/28 05:27:32 mikem Exp $

import bcm2835,
    std.stdio;

void main()
{
    if (geteuid() == 0 && !getenv("FAKEROOTKEY"))
    {
    	if (!bcm2835_init())
    	    return;
    	if (!bcm2835_close())
    	    return;
    }
    else
    {
    	fprintf(stderr, "****You need to be root to properly run this test program\n");
    	return;
    }
    return;
}
