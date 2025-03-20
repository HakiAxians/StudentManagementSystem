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