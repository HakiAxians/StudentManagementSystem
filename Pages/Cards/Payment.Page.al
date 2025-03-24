page 55010 PaymentPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PaymentTable;

    layout
    {
        area(Content)
        {
            repeater("Payment")
            {
                field(PaymentId; Rec.PaymentId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(StudentId; Rec.StudentId)
                {
                    ApplicationArea = All;

                    Visible = True;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    MinValue = 0.00;
                }
                field(PaymentDate; Rec.PaymentDate)
                {
                    ApplicationArea = All;
                }
                field(PaymentMethod; Rec.PaymentMethod)
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
            action("Save")
            {
                ApplicationArea = All;
                Caption = 'Save';
                Image = Save;
                trigger OnAction()
                begin
                    Rec.Modify(true);
                    Rec.Modify(false);
                    PAGE.RUNMODAL(PAGE::"PaymentPage");
                end;
            }
            action("Cancel")
            {
                ApplicationArea = All;
                Caption = 'Cancel';
                Image = Cancel;
                trigger OnAction()
                begin
                    Rec.Modify(false);
                    PAGE.RUNMODAL(PAGE::"PaymentPage");
                end;
            }

            action("Refresh")
            {
                ApplicationArea = All;
                Caption = 'Refresh';
                Image = Refresh;
                trigger OnAction()
                begin
                    Rec.Modify(true);
                end;
            }








        }
        area(Navigation)
        {
            action("Print Receipt")
            {
                ApplicationArea = All;
                Caption = 'Print Receipt';
                Image = Print;
                trigger OnAction()
                begin
                    MESSAGE('Shume shpejt do te implementohet');
                end;
            }
            action("GoToList")
            {
                ApplicationArea = All;
                Caption = 'Go To List';
                Image = List;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"PaymentPage2");
                end;
            }
        }



    }
}