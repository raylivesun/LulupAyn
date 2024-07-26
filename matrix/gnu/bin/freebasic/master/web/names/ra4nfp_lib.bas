#inclib "crt.bi"
#include once "crt.bi"

#lang "fblite"
#if 0
declare function ra4nfp_lib (byval names string, byval value string, byval localname string) as string

type ra4nfp_ alias "ra4nfp"
     names as string
     value as string
     localname as string

ra4nfp_alias.names = names
ra4nfp_alias.value = value
ra4nfp_alias.localname = localname


function main()
    local name = "John Doe"
    local value = "1234567890"
    local localname = "john_doe"
    local ra4nfp_obj = ra4nfp_lib(names, value, local)
    ra4nfp_obj.names
    ra4nfp_obj.value
    ra4nfp_obj.localname
    return ra4nfp_obj.names & ": " & ra4nfp_obj.
end function


call main()

end type

#else 

sub main()
    
    #define ra4nfp_ 0x000000
    
    ''' type the function local name and home directory'''

    let ra4nfp_obj = 9512
    let ra4nfp_type = 9512*100
    let ra4nfp_look = 9512*200
    let ra4nfp_decimal = 9512*300
    let ra4nfp_value = 9512*5000
    
    ''' output the number of decimal

    print "ra4nfp", ra4nfp_obj
    print "ra4nfp_type", ra4nfp_type
    print "ra4nfp_look", ra4nfp_look
    print "ra4nfp_decimal", ra4nfp_decimal
    print "ra4nfp_value", ra4nfp_value
     
end sub


''' call the main function '''

call main()


#endif




