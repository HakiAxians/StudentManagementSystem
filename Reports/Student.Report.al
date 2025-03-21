report 55115 StudentReport
{
    ApplicationArea = All;
    Caption = 'StudentReport';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'StudentReport.rdlc';
    DefaultLayout = Rdlc;
    
    dataset
    {
        dataitem(StudentTable;StudentTable)
        {
            DataItemTableView = sorting(StudentID);
            
            column(StudentID; StudentID)
            {
                
            }
            column(Name;Name)
            {
                
            }

            column(Surname;Surname)
            {
                
            }
            column(DateOfBirth;DateOfBirth)
            {
                
            }
            column(Email; Email)
            {
                
            }
            column(Address; Address)
            {
                
            }

        }}
    
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
   
