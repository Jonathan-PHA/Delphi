unit Arrays;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Spin, Buttons;

type
  TForm1 = class(TForm)
    btnGenerate: TBitBtn;
    btnDelete: TBitBtn;
    seInput: TSpinEdit;
    edtInput: TEdit;
    btnInsert: TBitBtn;
    redOut: TRichEdit;
    GroupBox1: TGroupBox;
    rdAscending: TRadioButton;
    rdDescending: TRadioButton;
    btnSort: TBitBtn;
    procedure btnGenerateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure Refresh();
    procedure btnInsertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  dynArray = Array of Integer;

var
  Form1: TForm1;
  myArray: dynArray;

implementation

{$R *.dfm}

procedure TForm1.btnDeleteClick(Sender: TObject);
var
  i: Integer;
begin
    for i := seInput.Value-1 to High(myArray) do
    begin
        myArray[i]:=myArray[i+1];
    end;
    setLength(myArray, Length(myArray)-1);
    Refresh;
end;

procedure TForm1.btnGenerateClick(Sender: TObject);
var
    i:integer;
begin
    redOut.Clear;
    if seInput.Value < 1 then
    begin
        showMessage('Array Length Too Short');
    end
    else
    begin
        setLength(myArray, seInput.Value);
        for i := Low(myArray) to High(myArray) do
        begin
            myArray[i]:=Random(1000)+1;
        end;
        Refresh;
    end;
end;

procedure TForm1.btnInsertClick(Sender: TObject);
var
  i: Integer;
begin
    setLength(myArray, Length(myArray)+1);
    for i := High(myArray) downto seInput.Value do
    begin
        myArray[i]:=myArray[i-1];
    end;
    myArray[i]:=StrToInt(edtInput.Text);
    Refresh;
end;

procedure TForm1.Refresh;
var
  i: Integer;
begin
    redOut.Clear;
    for i := Low(myArray) to High(myArray) do
    begin
        redOut.Lines.Add(IntToStr(i+1) + '. ' + #9 + IntToStr(myArray[i]));
    end;
end;

end.
