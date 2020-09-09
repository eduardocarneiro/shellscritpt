#!/bin/sh

myfunc()
{
	  echo "myfunc was called as : $@"
	    x=2
}

    ### Main script starts here 

    echo "Script was called with $@"
    x=1
    echo "x is $x"
    myfunc 1 2 3
    echo "x is $x"
    echo "Script was called with $@"
