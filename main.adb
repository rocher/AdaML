with Ada.Text_IO;

procedure Main is

   package Unset is
      procedure Dont_Know (Arg: in out Natural);
   private
      Var : Natural := 42;
   end Unset;
   package body Unset is
      procedure Dont_Know (Arg: in out Natural) is
      begin
         Arg := Unset.Var;
      end Dont_Know;
   end Unset;

   generic
      Number_Of_Elements : Natural;
   package Gen_Pack is
      type Gen_Type is new Positive range 1 .. Number_Of_Elements;
   end Gen_Pack;

   package Foo_Bar is
      type Declared_Type;

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

      type Declared_Type is new Integer range -200 .. 200;
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
