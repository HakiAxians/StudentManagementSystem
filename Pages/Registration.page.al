page 50005 "Registration Table"
{
    PageType = Card;
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