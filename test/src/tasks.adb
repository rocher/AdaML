with Ada.Text_IO;

package body tasks is

   task body Char_Writer_Task is
      Str         : Attributed_Character;
      Sleep       : Duration;
      My_Line     : Line_Position;
      Curr_Column : Column_Position := 10;
   begin
      accept Start (C : in Character; D : in Duration; L : Line_Position) do
         Str.Ch  := C;
         Sleep   := D;
         My_Line := L;
      end Start;
      while Counter.Get >= 10 loop
         Insert (Line => My_Line, Column => Curr_Column, Ch => Str);
         Refresh;
         Curr_Column := Curr_Column + 1;
         delay Sleep;
      end loop;
   end Char_Writer_Task;

   protected body Term is
      procedure Insert
        (Line : in Line_Position; Column : in Column_Position;
         Ch   : in Attributed_Character)
      is
      begin
         Terminal_Interface.Curses.Insert (Standard_Window, Line, Column, Ch);
      end Insert;
   end Term;

   protected body Counter is
      procedure Set (Number : in Natural) is
      begin
         Counter := Number;
      end Set;

      function Get return Natural is
      begin
         return Counter;
      end Get;
   end Counter;

end tasks;
