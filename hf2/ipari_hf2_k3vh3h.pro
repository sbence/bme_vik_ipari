CoDeSys+    �                    @        @   2.3.9.55�    @   ConfigExtension�          CommConfigEx7             CommConfigExEnd   ME�                  IB                    % QB                    %   ME_End   CM�      CM_End   CT�   ��������   CT_End   ConfigExtensionEnd/    @                             =('Z +    @      ��������             HZ        0$   @   D   C:\PROGRAM FILES (X86)\3S SOFTWARE\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         �7�S  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��	           Load Start Value    PV           ��
           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             �7�S  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��	           Reset Counter to 0    PV           ��
           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             �7�S  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��
       
    Count Up    CD            ��           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             �7�S  �   ����           DELETE               STR               ��              LEN           ��	              POS           ��
                 DELETE                                         �7�S  �   ����           F_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �7�S  �   ����           FIND               STR1               ��	              STR2               ��
                 FIND                                     �7�S  �   ����           INSERT               STR1               ��	              STR2               ��
              POS           ��                 INSERT                                         �7�S  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         �7�S  �   ����           LEN               STR               ��                 LEN                                     �7�S  �   ����           MID               STR               ��              LEN           ��	              POS           ��
                 MID                                         �7�S  �   ����           R_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �7�S  �   ����           REPLACE               STR1               ��	              STR2               ��
              L           ��              P           ��                 REPLACE                                         �7�S  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         �7�S  �   ����           RS               SET            ��              RESET1            ��	                 Q1            ��                       �7�S  �   ����           RTC           M             ��              DiffTime            ��                 EN            ��              PDT           ��                 Q            ��              CDT           ��                       �7�S  �   ����           SEMA           X             ��                 CLAIM            ��
              RELEASE            ��                 BUSY            ��                       �7�S  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��                       �7�S  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��       2    is FALSE, PT seconds after IN had a falling edge    ET           ��           elapsed time             �7�S  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��       0    is TRUE, PT seconds after IN had a rising edge    ET           ��           elapsed time             �7�S  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��           The pulse    ET           ��       &    The current phase of the High-Signal             �7�S  �   ����                  PLC_PRG     	      DobozVarakozik             
        Y    Seg�dv�ltoz� �rt�ke TRUE, ha feldolgozand� doboz �rkezett, de mindk�t t�lt�g�p foglalt.    DobozErkezik                 R_TRIG    
        :    Ha �j doboz �rkezik, akkor egy felfut� �llel jelzi ezt.     Idle   
     ����  �
               Mozog   
    ����  �
               Tovabb_A   
    ����  �
               Tovabb_B   
    ����  �
               SystemState   
     ����    
            Rendszer �llapotai 
   Toltogep_A                               Toltogep    
        !    A t�lt�g�p funkci�blokk-p�ld�ny 
   Toltogep_B                               Toltogep    
        !    B t�lt�g�p funkci�blokk-p�ld�ny    	   ProxyMain         !   
     IX                    %    )    k�zponti fut�szalag k�zel�t�s�rz�keloje    ProxyA         !   
     IX                   %         A t�ltog�p k�zel�t�s�rz�keloje    LevelA         !   
     IX                   %        A t�ltog�p szint�rz�keloje    AckA         !   
     IX                   %    !    A t�ltog�p nyugt�z� nyom�gombja    ProxyB         !   
     IX                   %         B t�ltog�p k�zel�t�s�rz�keloje    LevelB         !   
 	    IX                   %        B t�ltog�p szint�rz�keloje    AckB         !   
 
    IX                   %    !    B t�ltog�p nyugt�z� nyom�gombja       ConvMain         "   
     QX                    %    !    K�zponti fut�szalag muk�dtet�se    Diverter         "   
     QX                   %        Terelo helyzet�nek be�ll�t�sa    ConvA         "   
     QX                   %    (    A t�ltog�p fut�szalagj�nak muk�dtet�se    NozzleA         "   
     QX                   %         A t�ltog�p f�v�k�j�nak nyit�sa    AlarmA         "   
     QX                   %    $    A t�ltog�p hibajelzo toronyl�mp�ja    ConvB         "   
     QX                   %    (    B t�ltog�p fut�szalagj�nak muk�dtet�se    NozzleB         "   
     QX                   %         B t�ltog�p f�v�k�j�nak nyit�sa    AlarmB         "   
     QX                   %    $    B t�ltog�p hibajelzo toronyl�mp�ja             %!'Z  @    ��������       TOLTOGEP     	      Idle   
     ����  �            	   Betarolas   
    ����  �               Toltes   
    ����  �            	   Kitarolas   
    ����  �               Hiba   
    ����  �               ToltogepState   
     ����            
    Idoz�tok 
   Gombnyomas                 R_TRIG            <    Nyugt�z� nyom�gomb felfut� �l�re menj�nk �t Idle �llapotba    HibaE                    TON            U    Ha Toltes �llapotban 10 mp-ig nem jelez a Level, akkor Hiba �llapotba kell �tmenni     Meg3mp                    TON            O    Kitarolas �llapotban 3 mp eltelt�vel Idle vagy Betarolas �llapotba kell menni       UjDoboz                    *    �j doboz �rkez�s�t jelzo logikai bemenet    Proxy                        k�zel�t�s�rz�kelo    Level                        szint�rz�kelo    Ack             	           nyugt�z� nyom�gomb       Conv                        szalag    Nozzle                        f�v�ka    Alarm                         hibajelzo toronyl�mpa    Szabad                    4    az �resen v�rakoz� �llapotot jelzo logikai kimenet             CZ  @    ��������        
 �   ����   
   (  &      K   &     K   &     K   *&     K   ?&                 L&         +     ��localhost /�#/XE/    +      ��     X                              /�w�+�w1]E 	t����   �t@   ���?      ��t?   1]E �� �%� p| � ���     �� �X�          1]E     4           1]E 4� �%� p|D� ��� 	   �X`� v��                  pX���     ,   ,                                                        K        @   HZ?        ��������                     CoDeSys 1-2.2   ����  ��������                                �      
   �         �         �          �                    "          $                                                   '          (          �          �          �          �          �         �          �          �          �         �          �          �          �          �         �      �   �       P  �          �         �       �  �                    ~          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �       @  �       @  �       @  �       @  �       @  �       @  �         �         �          �       �  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         �          �         �      
   �         �         �         �         �         �          �          �         �      �����          �          �      (                                                                        "         !          #          $         �          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          �          �          l          o          p          q          r          s         u          �          v         �          �      ����|         ~         �         x          z      (   �          �         %         �          �          �         @         �          �          �         &          �          	                   �          �          �         �          �         �          �          �          �          �          �          �          �          �          �          �          �                            I         J         K          	          L         M          �                             �          P         Q          S          )          	          	          �           	          +	       @  ,	       @  -	      ����Z	      ����[	      ��������        ������������  ��������                                                   �  	   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ����
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	             ����   Index-Offset                 ��         SubIndex-Offset                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          �  	   	   Name                 ����   Member    	             ����
   Value                Member    
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          �  	   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ����
   Value                Variable       Min                Variable       Max                Variable                         ����  ��������               �   _Dummy@    @   @@    @   @             ��@             ��@@   @     �v@@   ; @+   ����  ��������                                  �v@      4@   �             �v@      D@   �                       �       @                           �f@      4@     �f@                �v@     �f@     @u@     �f@        ���           __not_found__-1__not_found__    __not_found__     IB          % QB          % MB          %    HZ	HZ     ��������           VAR_GLOBAL
END_VAR
                                                                                  "     ��������              HZ                 $����  ��������               ��������           Standard HZ	HZ      ��������                         	HZ     ��������           VAR_CONFIG
END_VAR
                                                                                   '                ��������           Global_Variables HZ	HZ     ��������           VAR_GLOBAL
END_VAR
                                                                                               '           	     ��������           Variable_Configuration HZ	HZ	     ��������           VAR_CONFIG
END_VAR
                                                                                                 ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               ,     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '     
   ,     b�           PLC_PRG =('Z	%!'Z      ��������        �  PROGRAM PLC_PRG
(* Bemeneti fizikai v�ltoz�k *)
VAR_INPUT
	ProxyMain AT %IX0.0: BOOL; (* k�zponti fut�szalag k�zel�t�s�rz�keloje *)
	ProxyA AT %IX0.1: BOOL;        (* A t�ltog�p k�zel�t�s�rz�keloje *)
	LevelA AT %IX0.2: BOOL;        (* A t�ltog�p szint�rz�keloje *)
	AckA AT %IX0.3: BOOL;           (* A t�ltog�p nyugt�z� nyom�gombja *)
	ProxyB AT %IX0.4: BOOL;       (* B t�ltog�p k�zel�t�s�rz�keloje *)
	LevelB AT %IX0.5: BOOL;       (* B t�ltog�p szint�rz�keloje *)
	AckB AT %IX0.6: BOOL;          (* B t�ltog�p nyugt�z� nyom�gombja *)
END_VAR

(* Kimeneti fizikai v�ltoz�k *)
VAR_OUTPUT
	ConvMain AT %QX0.0: BOOL;  (* K�zponti fut�szalag muk�dtet�se *)
	Diverter AT %QX0.1: BOOL;      (* Terelo helyzet�nek be�ll�t�sa *) (* FALSE -> A; TRUE -> B *)
	ConvA AT %QX0.2: BOOL;         (* A t�ltog�p fut�szalagj�nak muk�dtet�se *)
	NozzleA AT %QX0.3: BOOL;      (* A t�ltog�p f�v�k�j�nak nyit�sa *)
	AlarmA AT %QX0.4: BOOL;       (* A t�ltog�p hibajelzo toronyl�mp�ja *)
	ConvB AT %QX0.5: BOOL;        (* B t�ltog�p fut�szalagj�nak muk�dtet�se *)
	NozzleB AT %QX0.6: BOOL;     (* B t�ltog�p f�v�k�j�nak nyit�sa *)
	AlarmB AT %QX0.7: BOOL;      (* B t�ltog�p hibajelzo toronyl�mp�ja *)
END_VAR

(* Egy�b v�ltoz�k *)
VAR
	DobozVarakozik: BOOL := FALSE; (* Seg�dv�ltoz� �rt�ke TRUE, ha feldolgozand� doboz �rkezett, de mindk�t t�lt�g�p foglalt. *)
	DobozErkezik: R_TRIG; (* Ha �j doboz �rkezik, akkor egy felfut� �llel jelzi ezt.  *)
	SystemState: (Idle, Mozog, Tovabb_A, Tovabb_B) := Idle; (* Rendszer �llapotai *)
	Toltogep_A: Toltogep; (* A t�lt�g�p funkci�blokk-p�ld�ny *)
	Toltogep_B: Toltogep; (* B t�lt�g�p funkci�blokk-p�ld�ny *)
END_VAR
  (* Rendszer f�  �llapotg�p *)
CASE SystemState OF
    Idle: (* Idle �llapotban mozogjon a szalag, ha szabad valamelyik t�lt�g�p *)
        IF 	Toltogep_A.Szabad OR Toltogep_B.Szabad THEN
            SystemState := Mozog;
        END_IF;
    Mozog: (* Mozog �llapotban: ha A g�p szabad, tov�bb�tsa fel�; ha B g�p szabad, tov�bb�tsa fel�, ha egyik se szabad, akkor jelezze hogy van �j doboz �s Idle  *)
        IF (DobozErkezik.Q OR DobozVarakozik) AND Toltogep_A.Szabad THEN (* Szabad az A �s vagy most �rkezik �j doboz vagy kor�bbr�l v�rakozik egy doboz *)
		DobozVarakozik := FALSE; (* Ha szabad az A, akkor nem kell v�rakoztatni a dobozt �s indulhat a bet�rol�s *)
             SystemState := Tovabb_A;
        ELSIF (DobozErkezik.Q OR DobozVarakozik)  AND Toltogep_B.Szabad THEN (* Szabad a B �s vagy most �rkezik �j doboz vagy kor�bbr�l v�rakozik egy doboz *)
		DobozVarakozik := FALSE; (* Ha szabad a B, akkor nem kell v�rakoztatni a dobozt �s indulhat a bet�rol�s *)
             SystemState := Tovabb_B;
	 ELSIF DobozErkezik.Q THEN (* Ha nem szabad az A �s nem szabad a B sem, de j�tt �j doboz, akkor t�roljuk el ezt a v�rakoz� dobozt �s Idle *)
		DobozVarakozik := TRUE;
		SystemState := Idle;
        END_IF;
    Tovabb_A: (* Ha A fel� kell tov�bb�tani, akkor megh�vom az A FB-t *)
	Diverter := FALSE;
        Toltogep_A(UjDoboz:=TRUE,Proxy:=ProxyA,Level:=LevelA,Ack:=AckA,Conv=>ConvA,Nozzle=>NozzleA,Alarm=>AlarmA); (* UjDoboz = TRUE-val jelzem neki, hogy l�pjen a Betarolas �llapotba *)
	(* Ha van m�g doboz az �rz�kel� el�tt, akkor Mozog, am�gy Idle �llapot a k�vetkez� *)
	 SystemState := Mozog;
    Tovabb_B: (* Ha B fel� kell tov�bb�tani, akkor megh�vom az A FB-t *)
	Diverter := TRUE;
        Toltogep_B(UjDoboz:=TRUE,Proxy:=ProxyB,Level:=LevelB,Ack:=AckB,Conv=>ConvB,Nozzle=>NozzleB,Alarm=>AlarmB); (* UjDoboz = TRUE-val jelzem neki, hogy l�pjen a Betarolas �llapotba *)
	(* Ha van m�g doboz az �rz�kel� el�tt, akkor Mozog, am�gy Idle �llapot a k�vetkez� *)
	SystemState := Mozog;
END_CASE;

(* Kimenetek �ll�t�sa *)
(* A kimeneti v�ltoz�khoz egy logikai kifejez�s eredm�ny�t rendelj�k minden ciklusban. (28. dia) *)
ConvMain := NOT(SystemState=Idle); (* Idle �llapoton k�v�l minden m�s �llapotban mozog a fo szalag *)
(* Funkci�blokkok megh�v�sa minden ciklusban *)
DobozErkezik(CLK:=ProxyMain);
Toltogep_A(UjDoboz:=FALSE,Proxy:=ProxyA,Level:=LevelA,Ack:=AckA,Conv=>ConvA,Nozzle=>NozzleA,Alarm=>AlarmA);
Toltogep_B(UjDoboz:=FALSE,Proxy:=ProxyB,Level:=LevelB,Ack:=AckB,Conv=>ConvB,Nozzle=>NozzleB,Alarm=>AlarmB);                  ,   {�           Toltogep �D"Z	CZ      ��������        �  (* T�ltog�p funkci�blokk *)
FUNCTION_BLOCK Toltogep

(* Bemeneti v�ltoz�k *)
VAR_INPUT
    UjDoboz: BOOL; (* �j doboz �rkez�s�t jelzo logikai bemenet *)
    Proxy: BOOL;   (* k�zel�t�s�rz�kelo *)
    Level: BOOL;   (* szint�rz�kelo *)
    Ack: BOOL;     (* nyugt�z� nyom�gomb *)
END_VAR

(* Kimeneti v�ltoz�k *)
VAR_OUTPUT
    Conv: BOOL;   (* szalag *)
    Nozzle: BOOL; (* f�v�ka *)
    Alarm: BOOL;  (*  hibajelzo toronyl�mpa *)
    Szabad: BOOL; (* az �resen v�rakoz� �llapotot jelzo logikai kimenet *)
    (* Szabad �rt�ke TRUE, ha �j doboz fogad�s�ra k�szen �ll a t�ltog�p *)
END_VAR

(* Egy�b v�ltoz�k *)
VAR
    (* T�ltog�p �llapotai *)
    ToltogepState : (Idle, Betarolas, Toltes, Kitarolas, Hiba) := Idle;
    (* Idoz�tok *)
    Gombnyomas: R_TRIG; (* Nyugt�z� nyom�gomb felfut� �l�re menj�nk �t Idle �llapotba *)
    HibaE: TON; (* Ha Toltes �llapotban 10 mp-ig nem jelez a Level, akkor Hiba �llapotba kell �tmenni  *)
    Meg3mp: TON; (* Kitarolas �llapotban 3 mp eltelt�vel Idle vagy Betarolas �llapotba kell menni *)
    (* VanEUj: F_TRIG; (* Meg3mp lefut� �l�re (vagyis eltelt 3 mp) vizsg�ljuk, hogy Idle vagy Betarolas a k�vetkez� �llapot *) *)
END_VAR`  (* T�ltog�p �llapotg�pe *)
CASE ToltogepState OF
    Idle:
        IF UjDoboz THEN
            ToltogepState := Betarolas;
        END_IF;
    Betarolas:
        IF Proxy THEN
            ToltogepState := Toltes;
        END_IF;
    Toltes:
        IF Level THEN
            ToltogepState := Kitarolas;
        END_IF;
        IF HibaE.Q THEN
            ToltogepState := Hiba;
        END_IF;
    Kitarolas:
        IF UjDoboz THEN
            ToltogepState := Betarolas;
        ELSIF Meg3mp.Q THEN
		ToltogepState := Idle;
        END_IF;
    Hiba:
        IF Gombnyomas.Q THEN
            ToltogepState := Idle;
        END_IF;
END_CASE

(* Kimenetek �ll�t�sa *)
(* A kimeneti v�ltoz�khoz egy logikai kifejez�s eredm�ny�t rendelj�k minden ciklusban. (28. dia) *)
Conv := (ToltogepState = Betarolas OR ToltogepState = Kitarolas OR Meg3mp.Q);
Nozzle := (ToltogepState = Toltes);
Alarm := (ToltogepState = Hiba);
Szabad := (ToltogepState = Idle OR ToltogepState = Kitarolas);

Meg3mp(IN:=(ToltogepState = Kitarolas),PT:=T#3s); (* Kitarolas �llapotba bel�pve v�rjunk 3 m�sodpercet, ha k�zben nem �rkezik �j doboz. *)
Gombnyomas(CLK:=Ack); (* Nyugt�z� nyom�gomb felfut� �l�re menj�nk �t Idle �llapotba *)
HibaE(IN:= (ToltogepState = Toltes), PT:=T#10s); (* Ha Toltes �llapotban (Nozzle �zemel) 10 mp eltelt�vel a Level 0, akkor hiba van *)                 ����, 2 2 �         "   Standard.LIB 2.6.14 10:37:46 @�E�S      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @                              ��������           2 �  �           ����������������  
             ����  ��������        ����  ��������                      POUs                PLC_PRG  
                   Toltogep     ����          
   Data types  ����             Visualizations  ����               Global Variables                 Global_Variables                     Variable_Configuration  	   ����                                         ��������             HZ                         	   localhost            P      	   localhost            P      	   localhost            P     
HZ ի'V