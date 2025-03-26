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
            group("Notat")
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
            action("DeleteGrade")
            {
                ApplicationArea = All;
                Caption = 'Delete Grade';
                Image = Delete;
                trigger OnAction()
                begin
                    Rec.DELETE;
                end;
            }
            action("Refresh")
            {
                ApplicationArea = All;
                Caption = 'Refresh';
                Image = Refresh;
                trigger OnAction()
                begin
                    CurrPage.Update(false);
                end;
            }









        }
        area(Navigation)
        {

            action("GotoStudentProfile")
            {
                ApplicationArea = All;
                Caption = 'Student Profile';
                Image = User;
                RunObject = page "StudentPage";
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"StudentPage2", Rec);
                end;
            }
            action("GotoCourseProfile")
            {
                ApplicationArea = All;
                Caption = 'Course Profile';
                Image = Document;
                RunObject = page "CoursePage2";
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"CoursePage", Rec);
                end;
            }
            action("GoToPaymentList")
            {
                ApplicationArea = All;
                Caption = 'Go To Payment List';
                Image = Camera;
                RunObject = page "PaymentPage2";
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"PaymentPage2", Rec);
                end;
            }
            action("GoToProfessorList")
            {
                ApplicationArea = All;
                Caption = 'Go To Professor List';
                Image = Camera;
                RunObject = page "ProfessorPage2";
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"ProfessorPage2", Rec);
                end;
            }
            action("GoToRegistrationList")
            {
                ApplicationArea = All;
                Caption = 'Go To Registration List';
                Image = Camera;
                RunObject = page "Registration Page2";
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"Registration Page2", Rec);
                end;
            }
        }



    }
}