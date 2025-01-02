```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index := 1; -- Initialize to a valid index
   Found : Boolean := False;
begin
   for I in My_Data'Range loop
      if My_Data(I) > 5 then
         Index := I;
         Found := True;
         exit;
      end if;
   end loop;

   if Found then
      Put_Line("Value at Index " & Index'Image & ": " & My_Data(Index)'Image);
   else
      Put_Line("No element found greater than 5");
   end if;
   
exception
   when others =>
      Put_Line("Error: " & Ada.Exceptions.Exception_Message);
end Example_Solution;
```