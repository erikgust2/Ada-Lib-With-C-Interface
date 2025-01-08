with Ada.Text_IO; use Ada.Text_IO;

package body MyLib is

   -- Initializes secondary stack because Ada Runtime isn't smart enough to do it itself... :(

   procedure Initialize_Package;
   pragma Export (C, Initialize_Package, "_ada_my_library_init");

   procedure Initialize_Package is
   begin
      Initialized := True;
   end Initialize_Package;

   function Initialize return Integer is
   begin
      if not Initialized then
         Initialize_Package;
      end if;
      return 1;
   end Initialize;

   -- Public API Functions

   function Add (A, B : in Integer) return Integer is
   begin
      return A + B;
   end Add;

begin
   Initialize_Package;
end MyLib;
