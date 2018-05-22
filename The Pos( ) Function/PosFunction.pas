unit PosFunction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    btnConvert: TBitBtn;
    memOut: TMemo;
    edtInput: TEdit;
    BitBtn2: TBitBtn;
    procedure btnConvertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  input:string;
  name:string;
  surname:string;
  age:string;
  f:textfile;

implementation

{$R *.dfm}

procedure TForm1.btnConvertClick(Sender: TObject);
begin
    btnConvert.Default:=True;
    memOut.Clear;
    input:=edtInput.Text;

    name:=copy(input, 1, pos('#', input)-1);
    delete(input, 1, pos('#', input));

    surname:=copy(input, 1, pos('#', input)-1);
    delete(input, 1, pos('#', input));

    age:=input;

    memOut.Lines.Add('Name' + #9 + 'Surname' + #9 + 'Age');
    memOut.Lines.Add(name + #9 + surname + #9 + age);
end;

end.
