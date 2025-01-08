package body MyLib is

   -- Initializes secondary stack because Ada Runtime isn't smart enough to do it itself... :(

   procedure Initialize_Package;

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
