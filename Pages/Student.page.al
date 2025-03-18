page 50004 "StudentTable"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentTable;
    
    layout
    {
        area(Content)
        {
            group(Repeater)
            {
                field("Student ID"; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The student number';
                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'The first name of the student';
                }

                field("Surname"; Rec.Surname)
                {
                    ApplicationArea = All;
                    ToolTip = 'The last name of the student';
                    
                }
                field("Date of Birth"; Rec.DateOfBirth)
                {
                    ApplicationArea = All;
                    ToolTip = 'The date of birth of the student';
                }
                field("Sex"; Rec.Sex)
                {
                    ApplicationArea = All;
                }
                field("Phone No"; Rec."Phone No")
                {
                    ApplicationArea = All;
                    ToolTip = 'The phone number of the student';
                }
                field("Email"; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'The email address of the student';
                }
                field("Address"; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'The address of the student';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration date of the student';
                }
                field("Status"; Rec.Status)
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