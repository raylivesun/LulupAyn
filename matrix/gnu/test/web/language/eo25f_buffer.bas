#lang "fblite"
#if 0
declare function eo25f_buffer (byref buffer as string, byref full_buffer as string, byref kong_full as string) as string

type eo25f_ alias "eo25f_"
     names as string
     aliases as string
     aliases_count as integer
     aliases_ptr as pointer
     aliases_ptr_count as integer
     aliases_ptr_ptr as pointer
     aliases_ptr_ptr_count as integer
     aliases_ptr_ptr_ptr as pointer
     aliases_ptr_ptr_ptr_count as integer
     aliases_ptr_ptr_ptr_ptr as pointer
     aliases_ptr_ptr_ptr_ptr_count as integer
     aliases_ptr_ptr_ptr_ptr_ptr as pointer
     aliases_ptr_ptr_ptr_ptr_ptr_count as integer
     aliases_ptr_ptr_ptr_ptr_ptr_ptr as pointer
     aliases_ptr_ptr_ptr_ptr_ptr_ptr_count as integer
     aliases_ptr_ptr_ptr_ptr_ptr_ptr_ptr as pointer
     aliases_ptr_ptr_ptr_ptr_ptr_ptr_ptr_count as integer
     aliases_ptr_ptr_ptr_ptr_ptr_ptr_ptr_ptr as pointer
end type 


eo25f_buffer(buffer, full_buffer, kong_full)

''' the following is the same as the following
eo25f_buffer("buffer", "full_buffer", "kong_full")

end 
#else 
Dim as Double myDouble1, myDouble2, myDouble3
Dim as Integer myInt

'Set variable ranges
myDouble1 = 143.5
myDouble3 = 143.4
myDouble2 = 143.5
myInt = 12

'Show cast in action
Print "** Cast **"
Print "Double1 ";myDouble1;" cast to integer ";Cast(Integer, myDouble1)
Print "Double2 ";myDouble2;" cast to integer ";Cast(Integer, myDouble2)
Print "Double3 ";myDouble3;" cast to integer ";Cast(Integer, myDouble3)
Print "Expression ";myDouble1;" + ";myInt;" cast to double ";
Print Cast(Double, myDouble1 + myInt)
Print

'Show cint in action
Print "** CInt **"
Print "Double1 ";myDouble1;" cint to integer ";CInt(myDouble1)
Print "Double2 ";myDouble2;" cast to integer ";CInt(myDouble2)
Print "Double3 ";myDouble3;" cast to integer ";CInt(myDouble3)
Print "Expression ";myDouble1;" + ";myInt;" cast to integer ";CInt(myDouble1 + myInt)
Print "Expression ";myDouble2;" + ";myInt;" cast to integer ";CInt(myDouble2 + myInt)
Print

Sleep
End
#endif
