page 50006 "CoursePage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CourseTable;
    
    layout
    {
        area(Content)
        {
            repeater(Course)
            {
                field("CourseID"; Rec."CourseID")
                {
                    ApplicationArea = All;
                    Caption = 'Course ID';
                    ToolTip = 'Course ID';
                    editable = false;
                }
                field("CourseName"; Rec."CourseName")
                {
                    ApplicationArea = All;
                    Caption = 'Course Name';
                    ToolTip = 'Course Name';
                    editable = true;
                }
                field("CourseDescription"; Rec."CourseDescription")
                {
                    ApplicationArea = All;
                    Caption = 'Course Description';
                    ToolTip = 'Course Description';
                    editable = true;
                }
                field("Credit"; Rec."Credit")
                {
                    ApplicationArea = All;
                    Caption = 'Credit';
                    ToolTip = 'Credit';
                    editable = true;
                }
                field("CourseStartDate"; Rec."CourseStartDate")
                {
                    ApplicationArea = All;
                    Caption = 'Course Start Date';
                    ToolTip = 'Course Start Date';
                    editable = true;
                }
                field("CourseEndDate"; Rec."CourseEndDate")
                {
                    ApplicationArea = All;
                    Caption = 'Course End Date';
                    ToolTip = 'Course End Date';
                    editable = true;
                }
                field("rate"; Rec."rate")
                {
                    ApplicationArea = All;
                    Caption = 'Rate';
                    ToolTip = 'Rate';
                    editable = true;
                }
                field("Type of Course"; Rec."Type of Course")
                {
                    ApplicationArea = All;
                    Caption = 'Type of Course';
                    ToolTip = 'Type of Course';
                    editable = true;
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