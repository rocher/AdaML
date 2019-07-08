with Ada.Text_IO;

procedure Main is

   package Foo_Bar is
      type Bar_Type is record
         Baz : Natural;
      end record;
      function Answer (Arg : in Bar_Type) return Natural;

      type Dozen_Type is range 1 .. 12;
      type Twenty_Type is range 1 .. 20;

      type Week_Days is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
      function Get_Day_Of_Week return Week_Days;

      type My_Mod is mod 1_024;
      procedure Add_Ten (Arg : in out My_Mod);
   end Foo_Bar;

   package body Foo_Bar is
      function Answer (Arg : in Bar_Type) return Natural is
      begin
         return Arg.Baz;
      end Answer;

      function Get_Day_Of_Week return Week_Days is
      begin
         return Mon;
      end Get_Day_Of_Week;

      procedure Add_Ten (Arg : in out My_Mod) is
      begin
         Arg := Arg + 10;
      end;
end Foo_Bar;

begin
   Ada.Text_IO.Put_Line ("Hello, world!");
   Ada.Text_Io.Put_Line ("Today is " & Foo_Bar.Get_Day_Of_Week'Image);
end Main;
