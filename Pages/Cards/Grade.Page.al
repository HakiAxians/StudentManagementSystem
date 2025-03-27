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
                    Visible = false;
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
        area(Promoted)
        {
            actionref(Arbi; "More Details")
            {

            }
            actionref(Haki; "Delete")
            {

            }
        }



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
        area(Navigation)
        {
            group("Grade Actions")
            {
                action("NewGrade")
                {
                    ApplicationArea = All;
                    Caption = 'New Grade';
                    Image = New;
                    RunObject = page "GradePage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"GradePage");
                    end;
                }
                action("EditGrade")
                {
                    ApplicationArea = All;
                    Caption = 'Edit Grade';
                    Image = Edit;
                    RunObject = page "GradePage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"GradePage");
                    end;
                }
            }
            group("More")
            {
                action("Delete")
                {
                    ApplicationArea = All;
                    Caption = 'Delete';
                    Image = Delete;

                    // Promoted = true;
                    // PromotedCategory = Process;
                    // PromotedIsBig = true;
                    trigger OnAction()
                    begin
                        Rec.DELETE;
                        MESSAGE('Grade Deleted');
                    end;
                }
                action("More details")
                {
                    ApplicationArea = All;
                    Caption = 'More details';
                    Image = ViewDetails;
                    // Promoted = true;
                    // PromotedCategory = Process;
                    // PromotedIsBig = true;
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"GradePage2");
                    end;
                }
            }


        }
    }

    var
        GradeEmailCodeunit: Codeunit "GradeEmailCodeunit";

}