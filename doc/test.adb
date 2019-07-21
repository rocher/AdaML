with Ada.Text_IO;
with Ada.Exceptions;

procedure Test is

   package Unset is
      type T (<>);
      type LT_Type is limited record
         X : Natural := 0;
      end record;
      procedure Dont_Know (Arg: in out Natural);
      type T is new Natural range 1 .. 5; -- (One, Two);
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

Voltage : Integer range -5 .. +12 := -1;

procedure Set_Voltage (Value : in Integer) is
   use Ada.Exceptions;
   use Ada.Text_IO;
begin
   Voltage := Value;
   exception
      when E : Constraint_Error =>
         if Value > 12 then
            Voltage := 12;
            Put ("EE Voltage restricted to 12V : ");
            Put_Line (Exception_Message(E));
         else
            Voltage := -5;
            Put ("EE Voltage restricted to -5V : ");
            Put_Line (Exception_Message(E));
         end if;
end Set_Voltage;

type Day_Type is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
type Activity (Day : Day_Type) is record
   Exercise : Natural := 1;
   case Day is
      when Mon .. Fri =>
         Work : Natural := 4;
      when Sat =>
         Music : Natural := 2;
         Party : Natural := 2;
         when Sun =>
            null;
   end case;
end record;

Working : Activity := (Day => Tue, Exercise => 2, Work => 8);

begin
   Set_Voltage (18);
   -- Voltage := 20;
   Ada.Text_IO.Put_Line ("Hello, world!  Voltage is " & Voltage'Image);
   Ada.Text_Io.Put_Line ("Today is " & Foo_Bar.Get_Day_Of_Week'Image);
   Ada.Text_IO.Put_Line ("Activity of today is " & Working.Work'Image);
end Test;
