
ar1.SOPControl(2)
ar1.Connect (3 ,921600 ,1000)   --   # 1parameter : port number
ar1.DownloadBSSFw("C:\\ti\\mmwave_studio_02_01_00_00\\mmWaveStudio\\Scripts\\..\\..\\rf_eval_firmware\\radarss\\xwr6xx_radarss.bin") 
ar1.DownloadMSSFw("C:\\ti\\mmwave_studio_02_01_00_00\\mmWaveStudio\\Scripts\\..\\..\\rf_eval_firmware\\masterss\\xwr68xx_masterss.bin") 
ar1.PowerOn(0, 1000, 0, 0)
ar1.RfEnable()
ar1.ChanNAdcConfig(1, 1, 0, 1, 1, 1, 1, 2, 1, 0)
ar1.LPModConfig(0, 0) 
--   ar1.RfLdoBypassConfig(0x1)
ar1.RfInit()
ar1.DataPathConfig(513 , 1216644097 , 0)
ar1.LvdsClkConfig(1 , 1)
ar1.LVDSLaneConfig(0, 1, 1, 0, 0, 1, 0, 0) 
RSTD.Sleep(500)
ar1.ProfileConfig(0, 60, 100, 6, 65, 0, 0, 0, 0, 0, 0, 60, 0, 256, 10000, 0, 131072, 30)
RSTD.Sleep(500)
ar1.ChirpConfig(0, 0, 0, 0, 0, 0, 0, 1, 1, 0)
RSTD.Sleep(500)
ar1.FrameConfig(0, 0, 10, 128, 40, 0, 0, 1)
RSTD.Sleep(500)
ar1.SelectCaptureDevice ("DCA1000")
ar1.CaptureCardConfig_EthInit ("192.168.33.30" , "192.168.33.180" ,"12:34:56:78:90:12" , 4096, 4098) 
ar1.CaptureCardConfig_Mode(1 , 2 , 1 , 2 , 3 , 30)
ar1.CaptureCardConfig_PacketDelay(25) 
RSTD.Sleep(500)

