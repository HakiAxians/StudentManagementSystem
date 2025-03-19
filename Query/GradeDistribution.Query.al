query 55013 GradeDistrubutionQuery
{
    QueryType = Normal;
    QueryCategory = 'GradePage';
    OrderBy = descending(Grade);
    
    elements
    {
        dataitem(GradeTable;GradeTable)
        {
            column(GradeID;GradeID)
            {
            
            }
            
            dataitem(StudentTable;StudentTable)
            {
                DataItemLink=StudentID=GradeTable.StudentID;
                SqlJoinType=FullOuterJoin;
                column(StudentID;StudentID)
                {
                    
                }
                column(StudentName;Name)
                {
                    
                }
            }
            column(Grade;Grade)
            {
                
            }
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}