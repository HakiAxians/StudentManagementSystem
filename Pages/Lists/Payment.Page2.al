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
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}