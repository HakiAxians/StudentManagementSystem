codeunit 55131 CourseAssigmentLogger
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit:: CourseManagment, 'OnStudentAssignedToCourse','', false, false)]
    local procedure HandleStudentAssignment(Name: Text; CourseName: Text) 

    begin
        Message('Studenti %1 u nda në Kursin %2', Name, CourseName); 
    end; 

} 