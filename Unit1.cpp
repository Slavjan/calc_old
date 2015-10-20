//---------------------------------------------------------------------------
#include <stdio.h>
#include <string.h>

#include <vcl.h>
#pragma hdrstop
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
TButton * B_Digits[9];
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//--------------------цифры--------------------------------------------------
bool d = false; // клавиша действия не была нажата
int  sum = 0,   // сумма
razn = 0,    //  разность
pro = 0,       //  произведение >действие не производилось
del = 0;       //  деление
bool digit = false, ravno = false;
double result , a = 0, b = 0;
int zapete = 0;
void __fastcall TForm1::Button13Click(TObject *Sender)
{
	if (!digit)
	{
	   Edit2->Text = ((TButton*) Sender)->Caption;
	   digit = true; zapete = 0;
	   if (ravno)
	   {
		  Edit1->Text = "";
	   }
	}
	else if (digit)
	 {Edit2->Text = Edit2->Text+((TButton*) Sender)->Caption;}

	d = false;
}
//---------------------------------------------------------------------------
char z[2] = {'\0'};
char z_[1] = {'\0'};
char r[1] = {'='};
void __fastcall TForm1::Button3Click(TObject *Sender)
{
   char astr[256] = {'\0'};
	if (ravno == true)
	 {
		ravno = false;
	 }
   if (d == false)
   {
		Edit1->Text = Edit1->Text + Edit2->Text+ " "+((TButton*) Sender)->Caption;
		d = true;
		digit = false;
   }
   else
	{
		wcstombs(astr, Edit1->Text.c_str(), Edit1->Text.Length()-1);
		Edit1->Text = astr+((TButton*) Sender)->Caption;
		digit = false; zapete = 0;
	}
 if (Edit2->Text == "На нуль делить нельзя")
	{
		Edit2->Text = 0;
		Edit1->Text = "";
	}
	else
	{
	 if ((((TButton*) Sender)->Caption == "-") ||   //sum = 0,
		(((TButton*) Sender)->Caption == "+")||   //razn = 0,
		(((TButton*) Sender)->Caption == "*") ||  //pro = 0,
		(((TButton*) Sender)->Caption == "/"))   //del = 0,
	  {
		 if (sum == 0 && razn == 0 && pro == 0 && del == 0)
		 {
			a = Edit2->Text.ToDouble();
			wcstombs(z, ((TButton*) Sender)->Caption.c_str(),
			((TButton*) Sender)->Caption.Length());
			for(int i = 0; i < 1; i++)
			{
				switch (z[i])
				 {
					case '-': razn = 1; break;
					case '+': sum = 1; break;
					case '*': pro = 1; break;
					case '/': del = 1; break;
					default: razn = 0; sum = 0; pro = 0; del = 0;
				 }
			}
		 }
		 else  if (sum != 0 || razn != 0 || pro != 0 || del != 0)
		 {   b = Edit2->Text.ToDouble();
			for(int i = 0; i < 1; i++)
			{
				switch (z[i])
				 {
					case '-':
					Button16Click(Sender);  ravno = false;
					razn = 0; sum = 0; pro = 0; del = 0;
					wcstombs(astr, Edit1->Text.c_str(), Edit1->Text.Length()-1);
					Edit1->Text = astr +Button16->Caption;
					wcstombs(z, ((TButton*) Sender)->Caption.c_str(),
					((TButton*) Sender)->Caption.Length());
					Button3Click(Sender);
					digit = false;
					d = false;
					break;

					case '+':
					Button16Click(Sender);  ravno = false;
					razn = 0; sum = 0; pro = 0; del = 0;
					wcstombs(astr, Edit1->Text.c_str(), Edit1->Text.Length()-1);
					Edit1->Text = astr +Button16->Caption;
					wcstombs(z, ((TButton*) Sender)->Caption.c_str(),
					((TButton*) Sender)->Caption.Length());
					Button3Click(Sender);
					digit = false;
					d = false;
					break;

					case '*':
					Button16Click(Sender);   ravno = false;
					razn = 0; sum = 0; pro = 0; del = 0;
					wcstombs(astr, Edit1->Text.c_str(), Edit1->Text.Length()-1);
					Edit1->Text = astr +Button16->Caption;
					wcstombs(z, ((TButton*) Sender)->Caption.c_str(),
					((TButton*) Sender)->Caption.Length());
					Button3Click(Sender);
					digit = false;
					d = false;
					break;

					case '/':
					if (b == 0)
					{
					   Edit2->Text = "На нуль делить нельзя";
					   Edit1->Text = "";
					}
					else
					{
						Button16Click(Sender); ravno = false;
						razn = 0; sum = 0; pro = 0; del = 0;
						wcstombs(astr, Edit1->Text.c_str(), Edit1->Text.Length()-1);
						Edit1->Text = astr +Button16->Caption;
						wcstombs(z, ((TButton*) Sender)->Caption.c_str(),
						((TButton*) Sender)->Caption.Length());
						Button3Click(Sender);
						digit = false;
						d = false;
					}
					break;
					default: razn = 0; sum = 0; pro = 0; del = 0;
				 }
			}
		 }
	   }
	  }
}
//---------------------------------------------------------------------------
int d_count = 0;
void __fastcall TForm1::Button16Click(TObject *Sender)
{
	char astr[64] = {'\0'};
   if (d == false)
   {
		Edit1->Text = Edit1->Text + Edit2->Text+" "+((TButton*) Sender)->Caption+"  ";
		d = true;
   }
   else
	{
		wcstombs(astr, Edit1->Text.c_str(), Edit1->Text.Length()-1);
		Edit1->Text = astr+((TButton*) Sender)->Caption;
	}
	if (Edit2->Text == "На нуль делить нельзя")
	{
		Edit2->Text = 0;
		Edit1->Text = "";
	}
	else
	{
		   b = Edit2->Text.ToDouble();
		 if (sum == 1 || razn == 1 || pro == 1 || del == 1)
		 {
			for(int i = 0; i < 1; i++)
			{
				switch (z[i])
				 {
					case '-': razn = 0;
					result = a - b;
					Edit2->Text = FloatToStr(result); d = false;
					break;
					case '+': sum = 0;
					result = a + b ;
					Edit2->Text = FloatToStr(result); d = false;
					break;
					case '*': pro = 0;
					result = a * b;
					Edit2->Text = FloatToStr(result); d = false;
					break;
					case '/': del = 0;
					if (b == 0)
					{
					   Edit2->Text = "На нуль делить нельзя";
					   Edit1->Text = "";
					}
					else {
					result = a / b;
					Edit2->Text = FloatToStr(result); d = false;}
					break;
					default: razn = 0; sum = 0; pro = 0; del = 0;
				 }
			}
		}
	 }
	 a = result;
	 digit = false;
	 ravno = true;
}
//------- --------------------------------------------------------------------
int strelochka1 = 0;

void __fastcall TForm1::BitBtn1Click(TObject *Sender)
{
	  Timer1->Enabled = true;
	  strelochka1 = 1;
	  BitBtn1->Visible = false;
	  BitBtn2->Left = BitBtn1->Left;
	  BitBtn2->Visible = true;
	  Form1->Refresh();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::BitBtn2Click(TObject *Sender)
{
	Timer2->Enabled = true;
	strelochka1 = 0;
	BitBtn2->Visible = false;
	BitBtn1->Visible = true;
	Form1->Refresh();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
	Form1->ClientWidth = 255;
	Panel1->Width = Form1->ClientWidth - 19 ;
	Edit1->Width = Panel1->Width-5;
	Edit2->Width = Panel1->Width-5;
}

//---------------------------------------------------------------------------
void __fastcall TForm1::FormResize(TObject *Sender)
{
	Panel1->Width = Form1->ClientWidth - 19 ;
	Edit1->Width = Panel1->Width-5;
	Edit2->Width = Panel1->Width-5;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
   Form1->ClientWidth++;
   if (Form1->ClientWidth == 325)
   {
	  Timer1->Enabled = false;
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
   Form1->ClientWidth--;
   if (Form1->ClientWidth == 255)
   {
	  Timer2->Enabled = false;
   }
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Button19Click(TObject *Sender)
{
	Edit1->Text = "";
	a = Edit2->Text.ToDouble();
	Edit1->Text = "sqrt("+FloatToStr(a)+")";
	result = sqrt(a);
	Edit2->Text = FloatToStr(result);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button20Click(TObject *Sender)
{
	Edit1->Text = "";
	a = Edit2->Text.ToDouble();
	Edit1->Text = "sin("+FloatToStr(a)+")";
	result = sin(a*3.1415926535897932384626433832795/180);
	Edit2->Text = FloatToStr(result);
	ravno = true;
	digit = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button21Click(TObject *Sender)
{
	Edit1->Text = "";
	a = Edit2->Text.ToDouble();
	Edit1->Text = "cos("+FloatToStr(a)+")";
	result = cos(a*3.1415926535897932384626433832795/180);
	Edit2->Text = FloatToStr(result);
	ravno = true;
	digit = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button22Click(TObject *Sender)
{
	Edit1->Text = "";
	a = Edit2->Text.ToDouble();
	Edit1->Text = "tan("+FloatToStr(a)+")";
	result = tan(a*3.1415926535897932384626433832795/180);
	Edit2->Text = FloatToStr(result);
	ravno = true;
	digit = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button23Click(TObject *Sender)
{
	Edit1->Text = "";
	a = Edit2->Text.ToDouble();
	Edit1->Text = "cos("+FloatToStr(a)+")";
	double tg = tan(a*3.1415926535897932384626433832795/180);
	result = 1/tg;
	Edit2->Text = FloatToStr(result);
	ravno = true;
	digit = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button18Click(TObject *Sender)
{
	if (zapete == 0)
	{      char DecimalSeparator;
	   Edit2->Text =Edit2->Text+",";
	   Edit2->Text.Pos(DecimalSeparator);
	   zapete = 1;
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
	char str[256] = {'\0'};
	wcstombs(str, Edit2->Text.c_str(), Edit2->Text.Length()-1);
	if (Edit2->Text.Length() > 1)
	{
	   Edit2->Text = str;
	   zapete = 0;
	}
	else if (Edit2->Text.Length() == 1)
	{
	   Edit2->Text = 0;
	   digit = false;
	   d = false;
	   zapete = 0;
	}

	if (Edit2->Text == 0)
	{
	  wcstombs(str, Edit1->Text.c_str(), Edit1->Text.Length()-1);
		if (Edit1->Text.Length() > 1)
		{
			Edit1->Text = str;
		}
		else if ((Edit1->Text.Length()) == 1)
		{
			Edit1->Text = "";
			ravno = false;
			digit = false;
			d = false;
			razn = 0; sum = 0; pro = 0; del = 0;
			zapete = 0;
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
	Edit1->Text = "";
	Edit2->Text = 0;
	ravno = false;
	digit = false;
	d = false;
	razn = 0; sum = 0; pro = 0; del = 0;
	zapete = 0;
}
//---------------------------------------------------------------------------

