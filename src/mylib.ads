pragma Ada_2012;

package MyLib is
   pragma Elaborate_Body;

   function Initialize return Integer
   with Export => True, Convention => C, External_Name => "initialize";

   function Add (A, B : in Integer) return Integer
   with Export => True, Convention => C, External_Name => "add";

private
   Initialized : Boolean := false;
end MyLib;
