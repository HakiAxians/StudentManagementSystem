page 53210 "CoursePage2"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CourseTable;

    layout
    {
        area(Content)
        {
            group("Course Details")
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
            group("Course Actions")
            {
                action("NewCourse")
                {
                    Caption = 'New Course';
                    ApplicationArea = All;
                    Image = New;
                    trigger OnAction()
                    begin
                        CurrPage.UPDATE(false);
                        Rec.INSERT;
                    end;
                }
                action("EditCourse")
                {
                    Caption = 'Edit Course';
                    ApplicationArea = All;
                    Image = Edit;
                    trigger OnAction()
                    begin
                        CurrPage.UPDATE(false);
                        Rec.MODIFY;
                    end;
                }
                action("DeleteCourse")
                {
                    Caption = 'Delete Course';
                    ApplicationArea = All;
                    Image = Delete;
                    trigger OnAction()
                    begin
                        if CONFIRM('Are you sure you want to delete this course?', false) then
                            Rec.DELETE;
                    end;
                }
                action("RefreshList")
                {
                    Caption = 'Refresh';
                    ApplicationArea = All;
                    Image = Refresh;
                    trigger OnAction()
                    begin
                        CurrPage.UPDATE(false);
                    end;
                }
            }
        }
        area(Navigation)
        {
            group("Import/Print")
            {
                action("ImportData")
                {
                    Caption = 'Import Data';
                    ApplicationArea = All;
                    Image = Import;
                    trigger OnAction()
                    begin

                        MESSAGE('Import functionality not yet implemented(akoma jo).');
                    end;
                }
                action("PrintList")
                {
                    Caption = 'Print Course List';
                    ApplicationArea = All;
                    Image = Print;
                    trigger OnAction()
                    var
                        CourseReport: Report "CourseReport";
                    begin

                        CourseReport.SetTableView(Rec);
                        CourseReport.RUNMODAL;


                    end;
                }
            }
        }
    }
}