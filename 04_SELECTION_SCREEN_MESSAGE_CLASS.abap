*&---------------------------------------------------------------------*
*& Report ZBK_EGT_0050
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBK_EGT_0050.

TABLES: zbk_egt_kıtap.

DATA: gv_kitap_adi TYPE zbk_egt_kitap-kitap_adi.

PARAMETERS: p_kitap TYPE zbk_egt_kitap-kitap_adi,
            p_yazar TYPE zbk_egt_kitap-yazar.


INITIALIZATION.
p_yazar = 'Sabahattin Ali'.
p_kitap = 'Kürk Mantolu Madonna'.

START-OF-SELECTION.
WRITE: / 'Kitap Adı :' , p_kitap.
WRITE: / 'Yazar Adı :' , p_yazar.

MESSAGE 'Kitap bilgileri başarıyla alındı.' TYPE 'I'.
MESSAGE S000(zbk_msg).
MESSAGE 'Yayın yılını girmediniz.' TYPE 'W'.
MESSAGE 'Kitap adı boş bırakılmaz.' TYPE 'E' DISPLAY LIKE 'I'.



SELECT-OPTIONS: s_yil FOR zbk_egt_kitap-yayin_yili.

PARAMETERS: p_ucuz AS CHECKBOX,
            P_orta AS CHECKBOX,
            p_pahalı AS CHECKBOX.

SELECTION-SCREEN BEGIN OF BLOCK b11 WITH FRAME TITLE TEXT-100.
PARAMETERS: p_ali RADIOBUTTON GROUP gr1,
            p_kemal RADIOBUTTON GROUP gr1,
            p_safa RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK b11.

SELECTION-SCREEN BEGIN OF BLOCK b12 WITH FRAME TITLE TEXT-101.
PARAMETERS: p_romn RADIOBUTTON GROUP gr2,
            p_hiky RADIOBUTTON GROUP gr2,
            p_sirr RADIOBUTTON GROUP gr2.
SELECTION-SCREEN END OF BLOCK b12.
