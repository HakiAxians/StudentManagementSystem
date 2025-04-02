page 55127 RoleCenterPart
{
    Caption = 'Student Management System Information';
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentTable;

    layout
    {
        area(Content)
        {
            cuegroup("Number of units")
            {
                field("Students"; Rec.Count)
                {
                    ApplicationArea = All;
                    Caption = 'Students';
                    trigger OnDrillDown()
                    begin
                        PAGE.RunModal(PAGE::"StudentPage", Rec);
                    end;
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
        Course: Record CourseTable;

}