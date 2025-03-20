page 55009 GradePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = GradeTable;

    layout
    {
        area(Content)
        {
            repeater("Notat")
            {
                field(GradeId; Rec.GradeId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(StudentId; Rec.StudentId)
                {
                    ApplicationArea = All;
                    Visible = True;
                }
                field(CourseId; Rec.CourseId)
                {
                    ApplicationArea = All;
                    Visible = True;
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                    MinValue = 5;
                    MaxValue = 10;
                }
                field("Grade register Date"; Rec."Date")
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
            action("Grade Distribution")
            {
                ApplicationArea = All;
                RunObject = Query "GradeDistrubutionQuery";
                trigger OnAction()

                begin
                    
                end;
            }
        }
    }

    var
        myInt: Integer;
}