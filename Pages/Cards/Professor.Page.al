page 55011 "ProfessorPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ProfessorTable;
    
    layout
    {
        area(Content)
        {
            repeater(Professor)
            {
                field(ProfessorId; Rec.ProfessorId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(SurName; Rec.SurName)
                {
                    ApplicationArea = All;
                }
                field("Field of Specialization"; Rec."Field of Specialization")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field("Employment Date"; Rec."Employment Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action("PrintStudentReport")
            {
                Caption = 'Print Student Report';
                Image = Print;
                ApplicationArea = All;
                trigger OnAction()
                var
                    ProfessorReport: Report "ProfessorReport";
                begin
                    ProfessorReport.SetTableView(Rec);
                    ProfessorReport.RunModal();
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}