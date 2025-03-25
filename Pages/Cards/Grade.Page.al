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
                    Visible = false;
                }
                field(CourseId; Rec.CourseId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Visible = True;
                }
                field(CourseName; Rec.CourseName)
                {
                    ApplicationArea = All;
                    Visible = True;
                }
                
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    Visible = false;
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

            action("Confirm Grade")
            {
                ApplicationArea = All;
                trigger OnAction()

                begin
                    GradeEmailCodeunit.SendEmail(Rec);
                end;
            }
        }
    }

    var
        GradeEmailCodeunit: Codeunit "GradeEmailCodeunit";
}