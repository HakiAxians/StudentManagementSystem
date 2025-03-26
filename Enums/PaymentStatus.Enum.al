enum 50100 "PaymentStatusEnum"
{
    Extensible = true;
    Caption = 'Payment Status';


    value(0; NotPaid)
    {
        Caption = 'Not Paid';
    }


    value(1; Pending)
    {
        Caption = 'Pending';
    }


    value(2; Paid)
    {
        Caption = 'Paid';
    }


    value(3; Refunded)
    {
        Caption = 'Refunded';
    }
}
