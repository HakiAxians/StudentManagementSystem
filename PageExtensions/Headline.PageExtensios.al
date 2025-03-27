pageextension 55124 HeadlineExtension extends "Headline RC Order Processor"
{
    layout
    {
        addbefore(Control1){
            field(HeadLineTxt;HeadLineTxt){
                ApplicationArea=All;
            }
        }
    }
    
trigger OnOpenPage()
    begin
        HeadLineTxt:='Wellcome to Student Managment System in Business Central!';
    end;


    var
        HeadLineTxt: Text;
}