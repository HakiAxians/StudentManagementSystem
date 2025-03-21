page 50152 "Meeting Card"
{
    PageType = Card;
    SourceTable = Meeting;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group("Meeting Details")
            {
                field("Meeting ID"; Rec."Meeting ID")
                {
                    ToolTip = 'Unique identifier for the meeting';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ToolTip = 'ID of the student for this meeting';
                }
                field("Meeting Date"; Rec."Meeting Date")
                {
                    ToolTip = 'The date of the meeting';
                }
                field("Start Time"; Rec."Start Time")
                {
                    ToolTip = 'When the meeting starts';
                }
                field("End Time"; Rec."End Time")
                {
                    ToolTip = 'When the meeting ends';
                }
                field("Subject"; Rec.Subject)
                {
                    ToolTip = 'Subject or agenda of the meeting';
                }
                field("Location"; Rec.Location)
                {
                    ToolTip = 'Meeting location';
                }
                field("Notes"; Rec.Notes)
                {
                    ToolTip = 'Additional notes regarding the meeting';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("GoToMeetingList")
            {
                Caption = 'Meeting List';
                Image = List;
                RunObject = Page "Meeting Scheduler";
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"Meeting Scheduler");
                end;
            }
            group("Record Actions")
            {
                action("Save")
                {
                    Caption = 'Save';
                    Image = Save;
                    trigger OnAction()
                    begin
                        // Save meeting details
                        CurrPage.Update(false);
                    end;
                }
                action("Cancel")
                {
                    Caption = 'Cancel';
                    Image = Cancel;
                    trigger OnAction()
                    begin
                        // Cancel changes and close the page
                        CurrPage.Close;
                    end;
                }
            }
        }
    }
}
