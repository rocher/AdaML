with Tasks;
with Terminal_Interface.Curses; use Terminal_Interface;

procedure Main is

   Task_A : Tasks.Char_Writer_Task;
   Task_B : Tasks.Char_Writer_Task;

begin
   Curses.Init_Screen;
   Curses.Box;
   Curses.Refresh;

   Tasks.Counter.Set (2500);
   Task_A.Start ('a', 0.500, 2);
   Task_B.Start ('B', 0.250, 5);

   while Tasks.Counter.Get >= 10 loop
      Tasks.Counter.Set (Tasks.Counter.Get / 2);
      delay 1.0;
   end loop;

   Curses.End_Screen;
end Main;
