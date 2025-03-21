page 55012 "ProfessorPage2"
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ProfessorTable;

    layout
    {
        area(Content)
        {
            group(Professor)
            {
                field(ProfessorId; Rec.ProfessorId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(SurName; Rec.SurName)
                {
                    ApplicationArea = All;
                }
                field("Field of Specialization"; Rec."Field of Specialization")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field("Employment Date"; Rec."Employment Date")
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
            action("NewProfessor")
            {
                ApplicationArea = All;
                Caption = 'New Professor';
                RunObject = Page "ProfessorPage";
                trigger OnAction()
                begin
                    PAGE.RUN(Page::"ProfessorPage");
                end;

            }
            action("EditProfessor")
            {
                ApplicationArea = All;
                Caption = 'Edit Professor';
                RunObject = Page "ProfessorPage";
                trigger OnAction()
                begin
                    PAGE.RUN(Page::"ProfessorPage");
                end;
            }
            action("DeleteProfessor")
            {
                ApplicationArea = All;
                Caption = 'Delete Professor';
                RunObject = Page "ProfessorPage";
                trigger OnAction()
                begin
                    Message('Kjo vjen me pas si pasoj e mosintegrimit hehe')
                end;
            }
            action("Refreshlist")
            {
                ApplicationArea = All;
                Caption = 'Refresh';
                trigger OnAction()
                begin
                    CurrPage.UPDATE(true);
                end;
            }
        }
        area(Navigation)
        {
            group("Contact")
            {
                action("SendEmail")
                {
                    ApplicationArea = All;
                    Caption = 'Send Email';
                    Image = Email;
                    trigger OnAction()
                    begin
                        MESSAGE('Calm before the storm');
                    end;
                }
            }
            action("GoToCard")
            {
                ApplicationArea = All;
                Caption = 'Go To Card';
                Image = Card;
                trigger OnAction()
                begin
                    PAGE.RUNMODAL(Page::"ProfessorPage");
                end;
            }
        }
    }



}