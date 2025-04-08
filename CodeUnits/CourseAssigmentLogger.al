codeunit 55131 CourseAssigmentLogger
{
    EventSubscriberInstance = Manual;
    // [EventSubscriber(ObjectType::Table, 50003, 'OnStudentAssignedToCourse', '', false, false)]
    // local procedure HandleStudentAssignment(Rec: Record RegistrationTable)
    //  var 
    //     LogRegister: Record "Log Registrations";
    // begin

    //     Message('Eventi eshte run nga app: ALProject4');

   
        
    // end;

    [EventSubscriber(ObjectType::Page, Page::RegistrationPage, 'OnStudentAssignedToCourse', '', false, false)]
    procedure HandleStudentAssignmen(Rec: Record RegistrationTable)

    begin
        Message('Studenti %1 u nda në Kursin %2 page', Rec.Name, Rec.CourseName);
    end;

}