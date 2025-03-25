page 55011 "ProfessorPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ProfessorTable;

    layout
    {
        area(Content)
        {
            repeater(Professor)
            {
                field(ProfessorId; Rec.ProfessorId)
                {
                    ApplicationArea = All;
                    Visible = true;
                    Editable = false;
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

            action("PrintStudentReport")
            {
                Caption = 'Print Student Report';
                Image = Print;
                ApplicationArea = All;

                trigger OnAction()
                var
                    ProfessorReport: Report "ProfessorReport";
                begin
                    ProfessorReport.SetTableView(Rec);
                    ProfessorReport.RunModal();
                end;
            }
            action("Save")
            {
                Caption = 'Save';
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.Update(false);
                end;
            }
            action("cancel")
            {
                Caption = 'Cancel';
                Image = Cancel;
                trigger OnAction()
                begin
                    CurrPage.Update();
                end;
            }

            action("Edit")
            {
                Caption = 'Edit';
                Image = Edit;
                trigger OnAction()
                begin
                    Rec.Modify(true);
                end;
            }
            action("Refresh")
            {
                Caption = 'Refresh';
                Image = Refresh;
                trigger OnAction()
                begin
                    CurrPage.Update(true);
                end;
            }

        }
        area(Navigation)
        {
            action("More Details")
            {
                Caption = 'More Details';
                Image = ViewDetails;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = false;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"ProfessorPage2", Rec);
                end;
            }
            action("Delete")
            {
                Caption = 'Delete';
                Image = Delete;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = false;
                trigger OnAction()
                begin
                    Rec.Delete(true);
                    CurrPage.Close();
                end;
            }
        }
    }



}