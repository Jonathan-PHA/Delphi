unit random_function;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;          // Math is required for randomrange();

type
  TForm1 = class(TForm)
    btnRandomRange: TButton;
    memOut: TMemo;
    btnRandom1: TButton;
    edtFirst: TEdit;
    edtLast: TEdit;
    btnRandom2: TButton;
    btnClear: TButton;
    procedure btnRandomRangeClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnClearClick(Sender: TObject);
begin
    memOut.Clear;
end;

procedure TForm1.btnRandomRangeClick(Sender: TObject);
begin
    // Random range specifies range for random numbers
    // uses Math is required

    // function is inclusive therefore randomrange(1, 100)
    // will generate a random number between and including 1 and 100
    memOut.Lines.Add(IntToStr(RandomRange(StrToInt(edtFirst.Text), StrToInt(edtLast.Text))));
end;

end.
