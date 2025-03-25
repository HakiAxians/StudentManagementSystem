codeunit 55118 GradeEmailCodeunit
{
    
    procedure SendEmail(GradeRec: Record GradeTable)
    var
        Message: Codeunit "Email Message";
        Email: Codeunit "Email";
        EmailAccount: Record "Email Account";
    begin
        if GradeRec.Grade <=5 then
        begin
        Message.Create(GradeRec.Email, 'Your Grade Report', 'You have not passed the exam and your grade is: ' + Format(GradeRec."Grade"));
        Email.Send(Message, EmailAccount); 
        end
        else
        begin 
        Message.Create(GradeRec.Email, 'Your Grade Report', 'You have passed the exam and your grade is: ' + Format(GradeRec."Grade"));
        Email.Send(Message,EmailAccount); 
        end;
    end;

    // procedure SendEmail(GradeRec: Record GradeTable)
    // var
    //     Email: Codeunit "Email";
    //     EmailMessage: Codeunit "Email Message";
    //     EmailAccount: Record "Email Account";
    //     Body: Text;
    //     EmailAccountGUID: Guid;
    // begin
    //     // EmailAccountGUID := 'CDEF7890-ABCD-0123-1234-567890ABCDEF';
    //     // if not EmailAccount.Get(EmailAccountGUID) then
    //     //     Error('Default Email Account is not configured.');

    //     Body := StrSubstNo('Dear %1, your grade for the course %2 is %3.', GradeRec.Name, GradeRec.CourseName, GradeRec.Grade);
    //     EmailMessage.Create(
    //         GradeRec.Email,
    //         'Grade Confirmation',
    //         Body
    //     );

    //     Email.Send(EmailMessage, EmailAccount);
    // end;
}