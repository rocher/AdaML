with Terminal_Interface.Curses; use Terminal_Interface.Curses;

package Tasks is

   task type Char_Writer_Task is
      entry Start (C : in Character; D : in Duration; L : Line_Position);
   end Char_Writer_Task;

   protected Term is
      procedure Insert
        (Line : in Line_Position; Column : in Column_Position;
         Ch   : in Attributed_Character);
   end Term;

   protected Counter is
      procedure Set (Number : in Natural);
      function Get return Natural;
   private
      Counter : Natural := 100;
   end Counter;

end Tasks;
