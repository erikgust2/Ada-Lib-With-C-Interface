pragma Ada_2012;

package MyLib
  with Export, Convention => C
is
   pragma Elaborate_Body;

   function Initialize return Integer;
   pragma Export (C, Initialize, "initialize");

   function Add (A, B : in Integer) return Integer;
   pragma Export (C, Add, "add");

private
   Initialized : Boolean := false;
end MyLib;
