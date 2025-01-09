pragma Ada_2012;

package MyLib is
   pragma Elaborate_Body;

   function Internal_Initialize return Integer
   with Export => True, Convention => C, External_Name => "internal_initialize";

   function Internal_Add (A, B : in Integer) return Integer
   with Export => True, Convention => C, External_Name => "internal_add";

private
   Initialized : Boolean := false;
end MyLib;
