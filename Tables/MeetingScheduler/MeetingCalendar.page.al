page 50153 "Meeting Calendar"
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
                field("Meeting Date"; Rec."Meeting Date")
                {
                    ToolTip = 'Date of the meeting';
                }
                field("Subject"; Rec.Subject)
                {
                    ToolTip = 'Meeting subject or agenda';
                }
                field("Start Time"; Rec."Start Time")
                {
                    ToolTip = 'Start time of the meeting';
                }
                field("End Time"; Rec."End Time")
                {
                    ToolTip = 'End time of the meeting';
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
            group("Calendar Actions")
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
                action("Refresh")
                {
                    Caption = 'Refresh';
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
            group("Go To")
            {
                action("GoToScheduler")
                {
                    Caption = 'Meeting Scheduler';
                    Image = List;
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"Meeting Scheduler");
                    end;
                }

            }
        }
    }
}
