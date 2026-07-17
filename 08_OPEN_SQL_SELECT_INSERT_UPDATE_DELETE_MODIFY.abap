*&---------------------------------------------------------------------*
*& Report ZBEYZA_STOK_LISTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBEYZA_STOK_LISTE.

DATA: gv_urun_adi TYPE zbt_urun_table-urunadi,
      gv_kategori TYPE zbt_urun_table-kategori,
      gv_urun_fiyat TYPE zbt_urun_table-fiyat,
      gv_urun_stok TYPE zbt_urun_table-stok,
      gs_urun TYPE zbt_urun_table,
      gt_urun TYPE TABLE OF zbt_urun_table.

*SELECT
*UPTADE
*INSERT
*DELETE
*MODIFY

SELECT SINGLE *
FROM zbt_urun_table
INTO gs_urun
WHERE : urun_o = '100001'.

WRITE: / gs_urun-urunadi,
         gs_urun-kategori,
         gs_urun-fiyat,
         gs_urun-stok.

UPDATE zbt_urun_table SET fıyat = 1800
WHERE urun_o = '100006'.
WRITE: 'Update komutu çalıştırıldı!'.

gs_urun-urun_o = '100008'.
gs_urun-urunadi = 'Buzdolabı'.
gs_urun-kategori = 'Beyaz Eşyalar'.
gs_urun-fiyat = '20000'.
gs_urun-stok = '90.'.
INSERT zbt_urun_table FROM gs_urun.

WRITE: 'Insert komutu çalıştırıldı!'.

DELETE FROM zbt_urun_table
WHERE urun_o = '100007'.
WRITE: 'Delete komutu çalıştırıldı!'.

gs_urun-urun_o = '100008'.
gs_urun-urunadi = 'Buzdolabı'.
gs_urun-kategori = 'Beyaz Eşya'.
gs_urun-fiyat = '35499'.
gs_urun-stok = '90.'.
MODIFY zbt_urun_table FROM gs_urun.

WRITE: 'Modıfy komutu çalıştırıldı!'.
