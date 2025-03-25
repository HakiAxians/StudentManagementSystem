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
            action("PrintCourseReport")
            {
                Caption = 'Print Course Report';
                Image = Print;
                ApplicationArea = All;
                trigger OnAction()
                var
                    CourseReport: Report "CourseReport";
                begin
                    CourseReport.SetTableView(Rec);
                    CourseReport.RunModal();
                end;
            }
            action("Save")
            {
                Caption = 'Save';
                ApplicationArea = All;
                Image = Save;
                trigger OnAction()
                begin

                    CurrPage.UPDATE(false);
                end;
            }
            action("Cancel")
            {
                Caption = 'Cancel';
                ApplicationArea = All;
                Image = Cancel;
                trigger OnAction()
                begin

                    CurrPage.CLOSE;
                end;
            }

            group("Course Extras")
            {
                action("AssignInstructor")
                {
                    Caption = 'Assign Instructor';
                    ApplicationArea = All;
                    Image = ReservationLedger;
                    trigger OnAction()
                    begin

                        MESSAGE('shume shpejt.');
                    end;
                }
                action("ScheduleSessions")
                {
                    Caption = 'Schedule Sessions';
                    ApplicationArea = All;
                    Image = Calendar;
                    trigger OnAction()
                    begin

                        MESSAGE('shume shpejt');
                    end;
                }
                action("DeleteCourse")
                {
                    Caption = 'Delete';
                    ApplicationArea = All;
                    Image = Delete;

                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = false;



                    trigger OnAction()
                    begin
                        IF CONFIRM('Are you sure you want to delete this course?') THEN begin
                            Rec.DELETE;
                            CurrPage.UPDATE(false);
                        end;
                    end;
                }
                action("BacktoCourseList")
                {
                    Caption = 'More Details';
                    ApplicationArea = All;
                    Image = "ViewDetails";
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = false;
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"CoursePage2");
                    end;
                }
            }
        }
    }
}
