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
            action("Student Enrolled")

            {
                ApplicationArea = All;
                RunObject =query "StudentEnrollemntQuery";
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}