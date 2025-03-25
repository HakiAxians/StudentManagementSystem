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
            group("Import/Print")
            {
                action("Print Receipt")
                {
                    ApplicationArea = All;
                    Caption = 'Print Payment Receipt';
                    Image = Print;
                    trigger OnAction()
                    var
                    // PaymentReceipt: Report "PaymentReceipt";
                    begin
                        // PaymentReceipt.SetTableView(Rec);
                        // PaymentReceipt.RunModal();
                    end;

                }
                action("Import")
                {
                    ApplicationArea = All;
                    Caption = 'Import Payment';
                    Image = Import;
                    trigger OnAction()
                    var
                    // PaymentImport: Codeunit "PaymentImport";
                    begin
                        // 
                        Message('Coming soon');
                    end;
                }
                // action("Delete")
                // {
                //     ApplicationArea = All;
                //     Caption = 'Delete';
                //     Image = Delete;
                //     Promoted = true;
                //     PromotedCategory = Process;
                //     PromotedIsBig = false;
                //     trigger OnAction()
                //     begin
                //         Rec.Delete(true);
                //         CurrPage.Update();
                //     end;
                // }
                // action("More Details")
                // {
                //     ApplicationArea = All;
                //     Caption = 'More Details';
                //     Image = ViewDetails;
                //     Promoted = true;
                //     PromotedCategory = Process;
                //     PromotedIsBig = false;
                //     trigger OnAction()
                //     begin
                //         PAGE.RUN(PAGE::"PaymentPage2", Rec);
                //     end;
                // }

            }
        }
        area(Creation)
        {
            action("Delete")
            {
                ApplicationArea = All;
                Caption = 'Delete';
                Image = Delete;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = false;
                trigger OnAction()
                begin
                    Rec.Delete(true);
                    CurrPage.Update();
                end;
            }
            action("More Details")
            {
                ApplicationArea = All;
                Caption = 'More Details';
                Image = ViewDetails;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = false;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"PaymentPage2", Rec);
                end;
            }
        }



    }
}