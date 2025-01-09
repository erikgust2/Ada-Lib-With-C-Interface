package body MyLib is

   -- Initializes secondary stack because Ada Runtime isn't smart enough to do it itself... :(

   procedure Initialize_Package;

   procedure Initialize_Package is
   begin
      Initialized := True;
   end Initialize_Package;

   function Internal_Initialize return Integer is
   begin
      if not Initialized then
         Initialize_Package;
      end if;
      return 1;
   end Internal_Initialize;

   -- Public API Functions

   function Internal_Add (A, B : in Integer) return Integer is
   begin
      return A + B;
   end Internal_Add;

begin
   Initialize_Package;
end MyLib;
