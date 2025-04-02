codeunit 55130 StudentCourseAnalysis
{
    procedure GetStudentWithMostCourses()
    var
        RegRec: Record "RegistrationTable";
        StuRec: Record "StudentTable";
        CurrentStudent: Text;
        CurrentCount: Integer;
        MaxStudent: Text;
        MaxCount: Integer;
    begin
        CurrentStudent := '';
        CurrentCount := 0;
        MaxStudent := '';
        MaxCount := 0;

        RegRec.SETCURRENTKEY(Name);
        if RegRec.FindSet() then begin
            repeat

                if RegRec.Name <> CurrentStudent then begin
                    if CurrentCount > MaxCount then begin
                        MaxCount := CurrentCount;
                        MaxStudent := CurrentStudent;
                    end;

                    CurrentStudent := RegRec.Name;
                    CurrentCount := 0;
                end;

                CurrentCount += 1;

            until RegRec.Next() = 0;

            if CurrentCount > MaxCount then begin
                MaxCount := CurrentCount;
                MaxStudent := CurrentStudent;
            end;
        end;

        if MaxStudent <> '' then
            Message('The student with the most courses is %1 with %2 courses.', MaxStudent, MaxCount)
        else
            Message('No students found in the registration table.');
    end;
}