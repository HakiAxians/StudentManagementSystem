page 54000 "PaymentPage2"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PaymentTable;

    layout
    {
        area(Content)
        {
            group("Payment")
            {
                field(PaymentId; Rec.PaymentId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(StudentId; Rec.StudentId)
                {
                    ApplicationArea = All;
                    Visible = false;
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
            group("Payment Actions")
            {
                action("Newpayment")
                {
                    ApplicationArea = All;
                    Caption = 'New Payment';
                    Image = New;
                    RunObject= page  "PaymentPage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"PaymentPage");
                    end;
                }
                action("Editpayment")
                {
                    ApplicationArea = All;
                    Caption = 'Edit Payment';
                    Image = Edit;
                    RunObject= page  "PaymentPage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"PaymentPage");
                    end;
                }
                action("Deletepayment")
                {
                    ApplicationArea = All;
                    Caption = 'Delete Payment';
                    Image = Delete;
                    RunObject= page  "PaymentPage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"PaymentPage");
                    end;
                }

            }
            action("Refresh")
            {
                ApplicationArea = All;
                Caption = 'Refresh';
                Image = Refresh;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;
            }
        }
    }

    

}