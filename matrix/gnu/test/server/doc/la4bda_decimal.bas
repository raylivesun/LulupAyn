#lang "fblite"
#if 0
declare function la4dba_decimal (byref a as integer, byref b as integer, byref c as integer, byref d  as integer) as integer

type la4dba_ alias "la4dba"

la4dba_alias.la4dba_decimal := @la4dba_decimal

a := 10
b := 20
c := 30
d := 40

function la4dba_alias.la4dba ( a, b, c, d ) 
    result := la4dba_alias.la4dba_decimal(a, b, c, d)
    return result

end function


''' ################################################################
#define la4dba_alias la 0x00100000
la4dba_alias.la4dba_decimal := @la4dba_decimal

a := 10
b := 20
c := 30
d := 40

''' ################################################################
#define la4dba_items la 0x00100000
la4dba_items.la4dba_decimal := @la4dba_decimal

a := 10
b := 20
c := 30
d := 40

''' ################################################################
#define la4dba_functions la 0x00100000
la4dba_functions.la4dba := @la4dba

a := 10
b := 20
c := 30
d := 40

la4dba_functions.la4dba(a, b, c, d)


''' ################################################################
#define la4dba_variables la 0x00100000
a := 10
b := 20
c := 30
d := 40

''' ################################################################
#define la4dba_types la 0x00100000

''' ################################################################
#define la4dba_constants la 0x00100000

''' ################################################################
#define la4dba_modules la 0x00100000

''' ################################################################
#define la4dba_packages la 0x00100000

''' ################################################################
#define la4dba_subroutines la 0x00100000

''' ################################################################
#define la4dba_procedures la 0x00100000

''' ################################################################
#define la4dba_classes la 0x00100000

''' ################################################################
#define la4dba_interfaces la 0x00100000

''' ################################################################
#define la4dba_exceptions la 0x00100000

''' ################################################################
#define la4dba_functions la 0x00100000

''' ################################################################
#define la4dba_variables la 0x00100000

''' ################################################################
#define la4dba_types la 0x00100000

''' ################################################################
#define la4dba_constants la 0x00100000

''' ################################################################
#define la4dba_modules la 0x00100000

''' ################################################################
#define la4dba_packages la 0x00100000

''' ################################################################
#define la4dba_subroutines la 0x0010000

''' ################################################################
#define la4dba_procedures la 0x00100000

''' ################################################################
#define la4dba_classes la 0x00100000

''' ################################################################
#define la4dba_interfaces la 0x00100000

''' ################################################################
#define la4dba_exceptions la 0x00100000

''' ################################################################
#define la4dba_functions la 0x00100000

''' ################################################################
#define la4dba_variables la 0x00100000

''' ################################################################
#define la4dba_types la 0x00100000

''' ################################################################
#define la4dba_constants la 0x00100000

''' ################################################################
#define la4dba_modules la 0x00100000

''' ################################################################
#define la4dba_packages la 0x00100000

''' ################################################################
#define la4dba_subroutines la 0x00100000

''' ################################################################
#define la4dba_procedures la 0x00100000

''' ################################################################
#define la4dba_classes la 0x00100000

''' ################################################################
#define la4dba_interfaces la 0x00100000

''' ################################################################

let la = int(la4dba_)
print(la)
let la = fix(la4dba_, la)
print(la)

end type 

end
#else
print("This program is written in F# and can't be executed in Python.")
'Create some double variables
Dim As Double myDouble1 = 5.5, myDouble2 = 5.9
'Show rounding on negative and positive values
Print "Doubles:", myDouble1, myDouble2
Print "Int:", Int(myDouble1), Int(myDouble2)
Print "Fix:", Fix(myDouble1), Fix(myDouble2)
Print
'Try some calculation expressions
myDouble1 = 15.78
myDouble2 = 22.12
Print "Expression:",myDouble1;" +";myDouble2;" = "; Str(myDouble1 + myDouble2)
Print "Int:", Int(myDouble1 + myDouble2)
Print "Fix:", Fix(myDouble1 + myDouble2)

'Wait for keypress
Sleep
End
#endif






