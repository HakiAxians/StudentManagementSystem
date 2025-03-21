codeunit 55014 StudentAverage
{
    procedure Average(GradeRec: Record "GradeTable")
    var
        Avg: Decimal;
        Count: Integer;
        Sum: Decimal;
        Stud: Record StudentTable;
    begin
        Count := 0;
        Sum := 0;
        if GradeRec.FindSet() then begin
            repeat
                Count += 1;
                Sum := Sum + GradeRec.Grade;
            until GradeRec.Next() = 0;
        end;

        if Count>0 then
        Avg := Sum / Count;
               
        if Stud.Get(GradeRec.StudentId) then begin
            Stud.Average := Avg;
            Stud.Modify();
        end;

    end;


}