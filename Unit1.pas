unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    tmr1: TTimer;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s,m, i:Integer;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
      i:=15;
      tmr1.Enabled:=True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
       tmr1.Enabled:=False;
       lbl1.Caption:='00:15';

end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin

       i:=i-1;

       if i<10 then
           lbl1.Caption:=  '0'+IntToStr(m)+':'+'0'+inttostr(i)
       else
       begin
            lbl1.Caption:=  '0'+IntToStr(m)+':'+inttostr(i);
       end;

       if i=0 then
       begin
        tmr1.Enabled:=False;
        ShowMessage('����� �������');
       end;
end;

end.
