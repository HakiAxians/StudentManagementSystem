codeunit 55121 ImportExelCodeunit
{
    procedure ReadExelSheet()
    var
        FileManagment: CodeUnit "File Management";
        Istream: InStream;
        FromFile: Text[30];
    begin
        UploadIntoStream(UploadMSG, '', '', FromFile, Istream);
        if FromFile <> '' then begin
            FileName := FileManagment.GetFileName(FromFile);
            SheetName := TempExelBuffer.SelectSheetsNameStream(Istream);
        end
        else
            Error(NoFileMsg);
        TempExelBuffer.Reset();
        TempExelBuffer.DeleteAll();
        TempExelBuffer.OpenBookStream(Istream, SheetName);
        TempExelBuffer.ReadSheet();
    end;

    procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        TempExelBuffer.Reset();
        if TempExelBuffer.Get(RowNo, ColNo) then
            exit(TempExelBuffer."cell value as Text")
        else
            exit('');
    end;

    procedure InsertExelData()
    var
        ImportBuffer: Record "StudentTable";
        RowNo: Integer;
        ColNo: Integer;
        LineNo: Integer;
        MaxRowNo: Integer;
    begin
        RowNo := 0;
        ColNo := 0;
        MaxRowNo := 0;
        LineNo := 0;

        ImportBuffer.Reset();
        if ImportBuffer.FindLast() then
            LineNo := ImportBuffer."StudentID";
        TempExelBuffer.Reset();

        if TempExelBuffer.FindLast() then begin
            MaxRowNo := TempExelBuffer."Row No.";
            for RowNo := 2 to MaxRowNo do begin
                LineNo := LineNo + 10000;
                ImportBuffer.Init();
                Evaluate(ImportBuffer."StudentID", GetValueAtCell(RowNo, 1));
                Evaluate(ImportBuffer.Name, GetValueAtCell(RowNo, 2));
                Evaluate(ImportBuffer.SurName, GetValueAtCell(RowNo, 3));
                Evaluate(ImportBuffer.DateOfBirth, GetValueAtCell(RowNo, 4));
                Evaluate(ImportBuffer.Sex, GetValueAtCell(RowNo, 5));
                Evaluate(ImportBuffer."Phone No", GetValueAtCell(RowNo, 6));
                Evaluate(ImportBuffer.Email, GetValueAtCell(RowNo, 7));
                Evaluate(ImportBuffer.Address, GetValueAtCell(RowNo, 8));
                Evaluate(ImportBuffer."Registration Date", GetValueAtCell(RowNo, 9));
                Evaluate(ImportBuffer.Status, GetValueAtCell(RowNo, 10));
                Evaluate(ImportBuffer.Average, GetValueAtCell(RowNo, 11));


                ImportBuffer."SheetName" := SheetName;
                ImportBuffer."FileName" := FileName;
                ImportBuffer.Insert();


            end;
            Message(ExelImportSuccess);
        end;
    end;

    var
        FileName: Text[30];
        SheetName: Text[30];
        TempExelBuffer: Record "Excel Buffer" temporary;
        UploadMSG: Label 'Choice the Exel File';
        NoFileMsg: Label 'No File Selected';
        BatchIsblanmsg: Label 'Batch is blank';
        ExelImportSuccess: Label 'Exel Imported';

}