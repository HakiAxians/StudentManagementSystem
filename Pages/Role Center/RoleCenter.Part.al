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
                field("Courses"; Course.Count)
                {
                    ApplicationArea = All;
                    Caption = 'Courses';
                    trigger OnDrillDown()
                    begin
                        PAGE.RunModal(PAGE::"CoursePage", Course);
                    end;
                }
                field("Professors"; Professor.Count)
                {
                    ApplicationArea = All;
                    Caption = 'Professors';
                    trigger OnDrillDown()
                    begin
                        PAGE.RunModal(PAGE::"ProfessorPage", Professor);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }
    }


    var
        Course: Record CourseTable;
        Professor: Record ProfessorTable;
}