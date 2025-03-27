codeunit 55014 StudentAverage
{
    procedure Average()
    var
        Avg: Decimal;
        Count: Integer;
        Sum: Decimal;
        Stud: Record StudentTable;
        GradeRec: Record "GradeTable";
        PreviousStudentId: Integer;
    begin
        if GradeRec.FindSet() then begin
        Count := 0;
        Sum := 0;
        PreviousStudentId := 0; 

        repeat
            if GradeRec.StudentId <> PreviousStudentId then begin
                if PreviousStudentId <> 0 then begin
                    if Count > 0 then
                        Avg := Sum / Count;

                    if Stud.Get(PreviousStudentId) then begin
                        Stud.Average := Avg;
                        Stud.Modify();
                    end;
                end;
                Count := 0;
                Sum := 0;
                PreviousStudentId := GradeRec.StudentId; 
            end;
            Count += 1;
            Sum := Sum + GradeRec.Grade;

        until GradeRec.Next() = 0;

        if Stud.Get(PreviousStudentId) then begin
            Stud.Average := Avg;
            Stud.Modify();
        end;

    end;

    end;
}