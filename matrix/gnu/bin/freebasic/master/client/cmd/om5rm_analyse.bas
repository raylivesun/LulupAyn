#lang "fblite"
#if 0
declare function om5rm_analyse (byref om5rm as integer, byref om5 as string, byref om5m as integer) as string

type om5rm_ alias "om5rm"
     names as string
     index_names as string
     index_types as string
     index_sizes as string

     constructor()
     begin
          names := "";
          index_names := "";
          index_types := "";
          index_sizes := "";
          inherited constructor;
          om5rm := 0;
          om5 := "";
          om5m := 0;
          om5rm_analyse := function(byref om5rm, byref om5,
           byref om5m) as string
               var
                  om5r as string;
                  om5r_index as integer;
                  om5r_name as string;
                  om5r_type as string;
                  om5r_size as string;
                  om5r_index_names as string;
                  om5r_index_types as string;
                  om5r_index_sizes as string;
                  om5r_index_count as integer;
                  om5r_index_type as string;
                  om5r_index_size as string;
                  om5r_index_name as string;
                  om5r_index_number as integer;
    end begin
    om5r := om5;
    om5 := om5;
    om5m := om5m;
    om5rm_index_names := "";
    om5rm_index_types := "";
    om5rm_index_sizes := "";
    om5rm_index_count := 0;
    om5r_index_type := "";
    om5r_index_size := "";
    om5r_index_name := "";
    om5r_index_number := 0;
    om5r_index := 1;
    repeat
    begin
          om5r_index_type := "";
          om5r_index_size := "";
          om5r_index_name := "";
          om5r_index_number := 0;
          om5r_index := om5r_index + 1;
          om5r_name := "";
          om5r_type := "";
          om5r_size := "";
          repeat
          begin
          om5r_name := trim(om5r_name + substring(om5, om
          5r_index, 1));
          om5r_index := om5r_index + 1;
          until (om5r_index > length(om5) or

           om5[om5r_index] = ',');
           om5r_name := trim(om5r_name);
           om5r_type := "";
           om5r_size := "";
           repeat
           begin
           om5r_type := trim(om5r_type + substring(om5, om
           5r_index, 1));
           om5r_index := om5r_index + 1;
           until (om5r_index > length(om5) or
            om5[om5r_index] = ',');
            om5r_type := trim(om5r_type);
            repeat
            begin
            om5r_size := trim(om5r_size + substring(om5, om
            5r_index, 1));
            om5r_index := om5r_index + 1;
            until (om5r_index > length(om5) or
             om5[om5r_index] = ',');
             om5r_size := trim(om5r_size);
             if om5r_type = 'index' then
             begin
    end begin

    om5r_index_type := om5r_type;
    om5r_index_size := om5r_size;
    om5r_index_name := om5r_name;
    om5r_index_number := om5r_index_count + 1;
    om5r_index_names := trim(om5r_index_names + ',' +
     om5r_index_name);
     om5r_index_types := trim(om5r_index_types + ',' +
     om5r_index_type);

     om5r_index_sizes := trim(om5r_index_sizes + ',' +
     om5r_index_size);
     om5r_index_count := om5r_index_count + 1;
end type

#define names 0x0000100
#define index_names 0x00002000
#define index_types 0x00004000
#define index_sizes 0x00008000

om5rm_analyse := function(byref om5rm, byref om5, byref om5m) as string
begin
    if (om5rm and names) = 0 then
     om5rm_analyse := 'No names';
     else
     om5rm_analyse := 'Names:'+ om5rm_get_names(om
     om5rm, om5, om5m);
end begin

#define OM5 0x000000
om5rm_analyse := function(byref om5rm, byref om5, byref om5m) as string
begin
    if (om5rm and index_names) = 0 then
     om5rm_analyse := 'No index names';
end begin

#define items 0x000000
om5rm_analyse := function(byref om5rm, byref om5, byref om5m) as string
begin
    if (om5rm and index_types) = 0 then
     om5rm_analyse := 'No index types';
end begin

#define local 0x000000
om5rm_analyse := function(byref om5rm, byref om5, byref om5m) as string
begin
    if (om5rm and index_sizes) = 0 then
     om5rm_analyse := 'No index sizes';
end begin
end
#else 

'Macro created by v1ctor
#define MAKDWORD(x,y) (cint(x) shl 16 or cint(y))

Dim myInt As Uinteger
Dim As Integer i, cnt

'Store row 5 column 5 in a single uinteger
myInt = MAKDWORD(5, 5)

'Set the width and height of the console window
Width 80, 25
'Print column headers
cnt = 1
For i = 1 To 80
'Print columns as 12345678901...
If cnt = 10 Then
cnt = 0
End If
Locate 1, i
'Convert to string so we don't get leading space
Print Str(cnt)
'Increment our counter
cnt += 1
Next
'Print row headers
cnt = 2
For i = 2 To 25
'Row numbers will be like col numbers
If cnt = 10 Then
cnt = 0
End If
Locate i, 1
'Convert to string so we don't get leading space
'We need the semi­colon so a line feed isn't printed
'on line 25 which would scroll screen.
Print Str(cnt);
'Increment our counter
cnt += 1

Next

'Print out string on saved location
Locate Hiword(myInt), Loword(myInt)
Print "We stored the screen location in a single uinteger!"

Sleep
#endif

