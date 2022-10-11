unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    diff1: TRadioButton;
    diff2: TRadioButton;
    diff3: TRadioButton;
    ResetButton: TButton;
    confirm: TButton;
    guessField: TEdit;
    result: TLabel;
    procedure d1Change(Sender: TObject);
    procedure d2Change(Sender: TObject);
    procedure d3Change(Sender: TObject);
    procedure diff1Change(Sender: TObject);
    procedure confirmClick(Sender: TObject);
    procedure diff3Change(Sender: TObject);
    procedure guessFieldChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure diff2Change(Sender: TObject);
    procedure ResetButtonClick(Sender: TObject);
    procedure resultClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  randNum: Integer;
  input: Integer;
  difficulty: Integer;



implementation

{function NumGenerator(difficulty: Integer) :Integer;
begin
  if difficulty=1 then
     randomize;
     randNum:=random(9);
     Inc(randNum);
  if difficulty=2 then
     randomize;
     randNum:=random(99);
     Inc(randNum);
  if difficulty=3 then
     randomize;
     randNum:=random(999);
     Inc(randNum);
end;
}


{$R *.lfm}

{ TForm1 }





procedure TForm1.FormCreate(Sender: TObject);
begin

end;


procedure TForm1.ResetButtonClick(Sender: TObject);
begin
  if difficulty=1 then
     randomize;
     randNum:=random(9);
     Inc(randNum);
  if difficulty=2 then
     randomize;
     randNum:=random(99);
     Inc(randNum);
  if difficulty=3 then
     randomize;
     randNum:=random(999);
     Inc(randNum);
end;

procedure TForm1.resultClick(Sender: TObject);
begin

end;

procedure TForm1.guessFieldChange(Sender: TObject);
begin
  input:=strtointdef(guessField.Text, 0);
end;

procedure TForm1.confirmClick(Sender: TObject);
begin
 if input=randNum then
    result.Caption:=('Richtig geraten!');
 if input<randNum then
    result.Caption:=('Die Nummer ist größer als die Eingabe!');
 if input>randNum then
    result.Caption:=('Die Nummer ist kleiner als die Eingabe!');

end;



procedure TForm1.diff1Change(Sender: TObject);
begin
     diff2.Checked:=False;
     diff3.Checked:=False;
     difficulty:=1;
end;


procedure TForm1.diff2Change(Sender: TObject);
begin
     diff1.Checked:=False;
     diff3.Checked:=False;
     difficulty:=2;
end;

procedure TForm1.diff3Change(Sender: TObject);
begin
     diff2.Checked:=False;
     diff1.Checked:=False;
     difficulty:=3;
end;



end.

