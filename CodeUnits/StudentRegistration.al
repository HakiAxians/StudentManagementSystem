// codeunit 50100 "StudentRegistration"
// {
//     procedure RegisterStudent(StudentRec: Record StudentTable)
//     var
//     begin

//         if StudentRec."Name" = '' then
//             Error('Student  name is required.');
//         if StudentRec."Surname" = '' then
//             Error('Student  surname is required.');


//         if StudentRec.Find('-') then
//             Error('Student already exists.');

//         if StudentRec.Email = '' then
//             Error('Student email is required.');
//         if not IsValidEmail(StudentRec.Email) then
//             Error('Invalid email address.');
//         if StudentRec.DateOfBirth <> 0D then begin
//             if DateDiff(StudentRec.DateOfBirth, Today()) < 18 then
//                 Error('Student must be at least 18-60 years old.');
//         end;
//     end;

//     procedure IsValidEmail(Email: Text[80]): Boolean
//     begin
//         Error('Procedure IsValidEmail not implemented.');
//     end;

//     procedure DateDiff(DateOfBirth: Date; Today: Date): Integer
//     begin
//         Error('Procedure DateDiff not implemented.');
//     end;
// }
codeunit 50100 "StudentRegistration"
{
    procedure RegisterStudent(var StudentRec: Record "StudentTable")
    begin
        
        if StudentRec."Name" = '' then
            Error('Student name is required.');
        if StudentRec."Surname" = '' then
            Error('Student surname is required.');
        if StudentRec."Email" = '' then
            Error('Student email is required.');
        if StudentRec."Phone No" = '' then
            Error('Student phone number is required.');
    end;


}





