#lang "fblite"
#if 0
declare function m0pto_putback (byref p1 as string, byref p2 as string, byref p3 as string) as string

type m0pto_ alias "m0pto"
     names as string
     aliases as string
     description as string
     parameters as string
     returns as string
     examples as string
     exceptions as string
     version as string
     author as string
     license as string
     status as string
     tags as string
     links as string
     source as string
     source_code_repository as string
     source_code_url as string
     source_code_license as string
     source_code_language as string
     source_code_repository_type as string
     source_code_repository_url as string
     source_code_repository_license as string
     source_code_repository_language as string
end type


m0pto_putback("Hello", "World", "M0pto!")


' Output:
' "M0pto! World"

end
#else 

let m0pto_putback = 9512

#endif
