*&---------------------------------------------------------------------*
*& Report ZBT_URUN_SELECT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBT_URUN_SELECT.
DATA: gt_urun TYPE TABLE OF zbt_urun_table,
      gs_urun TYPE zbt_urun_table.
SELECT * FROM zbt_urun_table INTO TABLE gt_urun.
LOOP AT gt_urun INTO gs_urun.

  WRITE: / gs_urun-urun_o,
           gs_urun-urunadi,
           gs_urun-kategorı,
           gs_urun-fıyat,
           gs_urun-stok.
ENDLOOP.

gs_urun-urun_o = '100006'.
gs_urun-urunadi = 'Kulaklik'.
gs_urun-kategori = ' Elektronik'.
gs_urun-fıyat = '1800'.
gs_urun-stok = '25'.
INSERT zbt_urun_table FROM gs_urun.

WRITE: 'Insert komutu çalıstırıldı'.
