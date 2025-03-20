page 54321 "GradePage2"
{
    PageType = List;
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
                    Editable = false;
                }
                field(CourseId; Rec.CourseId)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                    MinValue = 5;
                    MaxValue = 10;
                }
                field("Grade register Date"; Rec."DateToday")
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
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}