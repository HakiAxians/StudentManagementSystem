page 50005 "RegistrationPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RegistrationTable;

    layout
    {
        area(Content)
        {
            repeater(Registration)
            {
                field("Enrollment ID"; Rec.EnrollmentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The enrollment ID';
                    Editable = false;
                }


                field("Student ID"; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The student ID';
                    Visible = false;
                }
                field("Student Name"; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Student Name';
                    ToolTip = 'The student name';
                }
                field("Course ID"; Rec.CourseID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The course ID';
                    Visible = false;
                }
                field("Course Name"; Rec.CourseName)
                {
                    ApplicationArea = All;
                    Caption = 'Course Name';
                    ToolTip = 'The course name';
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

            action("Save")
            {
                Caption = 'Save';
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;

            }
            action("Cancel")
            {
                Caption = 'Cancel';
                Image = Cancel;
                trigger OnAction()
                begin
                    CurrPage.Close();
                end;

            }
            action("Student Enrolled")

            {
                ApplicationArea = All;
                RunObject =query "StudentEnrollemntQuery";

                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Registration Table2");
                end;
            }
            action("BackToList")

            {
                ApplicationArea = All;
                Caption = 'Back to List';
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Registration Table2");
                end;
            }
        }
    }
}