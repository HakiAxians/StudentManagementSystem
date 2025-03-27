page 55122 "Business Chart Part"
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = GradeDetailsTable;

    layout
    {
        area(Content)
        {
            usercontrol(Chart; "BusinessChart")
            {
                ApplicationArea = All;

                trigger AddInReady()
                var
                    Buffer: Record "Business Chart Buffer";
                    GradeRec: Record "GradeDetailsTable";
                    i: Integer;
                begin
                    Buffer.Initialize();
                    Buffer.AddMeasure('Grade',1,Buffer."Data Type"::Integer,Buffer."Chart Type"::Pie);
                    i:=1;
                    if GradeRec.FindSet(false,false) then begin
                        GradeRec.CalcFields(Grade);
                        if GradeRec.Grade <> 0 then begin
                            Buffer.AddColumn(GradeRec.GradeDetailId);
                            Buffer.SetValueByIndex(0,i,GradeRec.Grade);
                            i+=1;
                        end;
                        repeat until GradeRec.Next() = 0;   
                    end;
                    Buffer.UpdateChart(CurrPage.Chart);
                end;
            }
        }
    }
}