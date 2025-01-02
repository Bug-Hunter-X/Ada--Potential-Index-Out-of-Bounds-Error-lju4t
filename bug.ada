```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;
begin
   for I in My_Data'Range loop
      if My_Data(I) > 5 then
         Index := I;
         exit;
      end if;
   end loop;
   -- Potential error: Accessing My_Data(Index) outside the loop
   Put_Line("Value at Index " & Index'Image & ": " & My_Data(Index)'Image);
   -- The loop doesn't guarantee Index will always be in My_Data'Range 
exception
   when others =>
      Put_Line("Error: " & Ada.Exceptions.Exception_Message);
end Example;
```