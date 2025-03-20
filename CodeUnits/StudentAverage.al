codeunit 55014 StudentAverage
{
    procedure Average(GradeRec: Record "GradeTable")
    var
        Avg: Decimal;
        Count: Integer;
        Sum: Decimal;
        Stud: Record StudentTable;
    begin
        Count := 3;
        Sum := 0;
        if GradeRec.FindSet() then begin
            if (GradeRec.StudentId = Stud.StudentId) then 
            begin
            repeat
                Sum := Sum + GradeRec.Grade;
            until GradeRec.Next() = 0;
            end;
        end;

        if Count>0 then
        Avg := Sum / Count;
               
        if Stud.Get(GradeRec.StudentId) then begin
            Stud.Average := Avg;
            Stud.Modify();
        end;

    end;


}