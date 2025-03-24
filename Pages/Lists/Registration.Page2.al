page 50009 "Registration Table2"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RegistrationTable;

    layout
    {
        area(Content)
        {
            group(Repeater)
            {
                field("Enrollment ID"; Rec.EnrollmentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The enrollment ID';
                }


                field("Student ID"; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The student ID';
                }
                field("Course ID"; Rec.CourseID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The course ID';
                }
                field("Registration Date"; Rec.RegistrationDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration date';
                }
                field("Registration Status"; Rec.RegistrationStatus)
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration status';
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Newregistration")

            {
                Caption = 'New Registration';
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;


            }
            action("Editregistration")
            {
                Caption = 'Edit Registration';
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;

            }
            action("Deleteregistration")
            {
                Caption = 'Delete Registration';
                Image = Delete;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;

            }
            action("refresh")
            {
                Caption = 'Refresh';
                Image = Refresh;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;

            }
            action("BackToCard")
            {
                Caption = 'Back to Card';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"RegistrationPage");
                end;
            }
        }
        area(Navigation)
        {
            action("GoToStudentList")
            {
                Caption = 'Go to Student List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"StudentPage2");
                end;
            }
            action("GoToCourseList")
            {
                Caption = 'Go to Course List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"CourseTable2");
                end;

            }
        }
    }
}