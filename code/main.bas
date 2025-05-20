CS = 10
DC = 8
pin(DC) = 0
SPI.CSPIN CS
spi = spi.byte(&h21)
spi = spi.byte(&h21)
pin(DC) = 1

'lvgl.start
lvgl.init BLACK, WHITE
lvgl.visible lvgl.cursor, 0
'canv = lvgl.canvas 0, 0, 480, 320, WHITE
bas = lvgl.base 0, 0, 480, 320

lvgl.def_father bas
  'txt = lvgl.textarea "Surround Master"
  'lvgl.align_to txt, bas, 2
  LS_LF = lvgl.imagebutton "/LS_LF_P.jpg", "/LS_LF.jpg" 
  lvgl.align_to LS_LF, bas, 1 
  
  LS_CF = lvgl.imagebutton "/LS_CF_P.jpg", "/LS_CF.jpg"
  lvgl.add_event LS_CF, 1, LS_CF_PRESSED
  lvgl.align_to LS_CF, bas, 2
  
  LS_RF = lvgl.imagebutton "/LS_RF_P.jpg", "/LS_RF.jpg"
  lvgl.align_to LS_RF, bas, 3 
  
  LS_LS = lvgl.imagebutton "/LS_LS_P.jpg", "/LS_LS.jpg"
  lvgl.align_to LS_LS, bas, 7
  
  LS_RS = lvgl.imagebutton "/LS_RS_P.jpg", "/LS_RS.jpg"
  lvgl.align_to LS_RS, bas, 8 
  
  LS_LR = lvgl.imagebutton "/LS_LR_P.jpg", "/LS_LR.jpg"
  lvgl.align_to LS_LR, bas, 4 
  
  LS_RR = lvgl.imagebutton "/LS_RR_P.jpg",  "/LS_RR.jpg"
  lvgl.align_to LS_RR, bas, 6
  
  LS_SUB = lvgl.imagebutton "/LS_SUB_P.jpg", "/LS_SUB.jpg"
  lvgl.align_to LS_SUB, bas, 5 
   
  
  BALL = lvgl.imagebutton "/BALL.jpg", "/BALL.jpg"
  lvgl.align_to BALL, bas, 9
  
  lvgl.start_drag BALL
 
do
  lvgl.refresh
loop



LS_CF_PRESSED:
  lvgl.msgbox "LS_CF", "Center selected"
Return  
