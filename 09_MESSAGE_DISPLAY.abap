*&---------------------------------------------------------------------*
*& Report ZBK_MESSAGE_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBK_MESSAGE_001.


START-OF-SELECTION.

MESSAGE 'Staj basariyla basladi.' TYPE 'S'.
MESSAGE ' Bugün MESSAGE konusunu ogreniyorum.' TYPE 'I'.
MESSAGE ' Kaydetmeden cıkmayınız.' TYPE 'W'.
MESSAGE ' Lütfen kullanıcı adını giriniz.' TYPE 'E'.
MESSAGE ' ıslem ıptal edildi.' TYPE 'A'.
MESSAGE ' Sistem hatasi olustu.' TYPE 'X'.



MESSAGE 'Bugün ABAP calısıyorum.' TYPE 'I' DISPLAY LIKE 'W'.
MESSAGE 'Kaydetmeden cıkmayınız.' TYPE 'W' DISPLAY LIKE 'S'.
MESSAGE 'Lutfen kullancı adını gırınız.' TYPE 'E' DISPLAY LIKE 'I'.
MESSAGE 'ıslem ıptal edilddi.' TYPE 'A' DISPLAY LIKE 'W'.
MESSAGE 'Sıstem hatası olustu.' TYPE 'X' DISPLAY LIKE 'E'.


MESSAGE text-000 TYPE 'I'.
MESSAGE text-001 TYPE 'S'.

MESSAGE i000(zbk_msg).
MESSAGE i001(zbk_msg) WITH 'ABAP'.

DATA: lv_gun TYPE char20.
lv_gun = 'Persembe'.
MESSAGE i002(zbk_msg) WITH 'Çarsamba' lv_gun.

WRITE: ' Message Egitim Videosu'.
