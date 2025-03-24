codeunit 55118 GradeEmailCodeunit
{
    
    procedure SendEmail(GradeRec: Record GradeTable)
    var
        Message: Codeunit "Email Message";
        Email: Codeunit "Email";
    begin
        if GradeRec.Grade <=5 then
        begin
        Message.Create(GradeRec.Email, 'Your Grade Report', 'You have not passed the exam and your grade is: ' + Format(GradeRec."Grade"));
        Email.Send(Message) 
        end
        else
        begin 
        Message.Create(GradeRec.Email, 'Your Grade Report', 'You have passed the exam and your grade is: ' + Format(GradeRec."Grade"));
        Email.Send(Message); 
        end;
    end;
}