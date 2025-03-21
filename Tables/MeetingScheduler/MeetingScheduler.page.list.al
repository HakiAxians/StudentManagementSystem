page 50151 "Meeting Scheduler"
{
    PageType = List;
    SourceTable = Meeting;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Repeater)
            {
                field("Meeting ID"; Rec."Meeting ID")
                {
                    ToolTip = 'Unique meeting identifier';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ToolTip = 'Associated student identifier';
                }
                field("Meeting Date"; Rec."Meeting Date")
                {
                    ToolTip = 'Date of the meeting';
                }
                field("Start Time"; Rec."Start Time")
                {
                    ToolTip = 'Start time of the meeting';
                }
                field("End Time"; Rec."End Time")
                {
                    ToolTip = 'End time of the meeting';
                }
                field("Subject"; Rec.Subject)
                {
                    ToolTip = 'Meeting subject or agenda';
                }
                field("Location"; Rec.Location)
                {
                    ToolTip = 'Location of the meeting';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("GoToCard")
            {
                Caption = 'Meeting Card';
                Image = Card;
                RunObject = Page "Meeting Card";
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"Meeting Card");
                end;
            }
            group("Meeting Actions")
            {
                action("NewMeeting")
                {
                    Caption = 'New Meeting';
                    Image = New;
                    RunObject = Page "Meeting Card";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"Meeting Card");
                    end;
                }
                action("EditMeeting")
                {
                    Caption = 'Edit Meeting';
                    Image = Edit;
                    RunObject = Page "Meeting Card";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"Meeting Card");
                    end;
                }
                action("DeleteMeeting")
                {
                    Caption = 'Delete Meeting';
                    Image = Delete;
                    trigger OnAction()
                    begin
                        Rec.DELETE;
                    end;
                }
                action("Refresh")
                {
                    Caption = 'Refresh';
                    Image = Refresh;
                    trigger OnAction()
                    begin
                        CurrPage.Update(false);
                    end;
                }
            }
        }
        area("Navigation")
        {
            action("GoToStudentList")
            {
                Caption = 'Student List';
                Image = User;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"StudentTable2");
                end;
            }
            action("GoToMeetingCalendar")
            {
                Caption = 'Meeting Calendar';
                Image = Calendar;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"Meeting Calendar");
                end;
            }
        }
    }
}
