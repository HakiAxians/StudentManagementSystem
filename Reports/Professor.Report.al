report 55116 ProfessorReport
{
    ApplicationArea = All;
    Caption = 'ProfessorReport';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'ProfessorReport.rdlc';
    DefaultLayout = Rdlc;

    dataset
    {
        dataitem(ProfessorTable; ProfessorTable)
        {
            DataItemTableView = sorting(ProfessorID);

            column(ProfessorID; ProfessorID)
            {

            }
            column(Name; Name)
            {

            }
            column(Surname; Surname)
            {

            }

            column(Email; Email)
            {

            }
            column(Employment; "Employment Date")
            {

            }
        }

    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }


}