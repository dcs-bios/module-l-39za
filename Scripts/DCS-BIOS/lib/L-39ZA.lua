BIOS.protocol.beginModule("L-39ZA", 0x3200)
BIOS.protocol.setExportModuleAircrafts({"L-39C", "L-39ZA"})

local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document

local parse_indication = BIOS.util.parse_indication

local defineFloat = BIOS.util.defineFloat
local defineIndicatorLight = BIOS.util.defineIndicatorLight
local definePushButton = BIOS.util.definePushButton
local definePotentiometer = BIOS.util.definePotentiometer
local defineRotary = BIOS.util.defineRotary
local defineTumb = BIOS.util.defineTumb
local define3PosTumb = BIOS.util.define3PosTumb
local defineToggleSwitch = BIOS.util.defineToggleSwitch
local defineString = BIOS.util.defineString
local defineIntegerFromGetter = BIOS.util.defineIntegerFromGetter
local defineMultipositionSwitch = BIOS.util.defineMultipositionSwitch

-- remove Arg# Pilot 600 / Instructor 610


-----------------------------------L-39 GAUGES--------------------------------------------------

defineFloat("FRONT_CLOCK_TIME_H", 67, {0, 1}, "Gauges","FRONT Clock Current Time Hours")
defineFloat("FRONT_CLOCK_TIME_M", 68, {0, 1}, "Gauges","FRONT Clock Current Time Minutes")
defineFloat("FRONT_CLOCK_TIME_S", 70, {0, 1}, "Gauges","FRONT Clock Current Time Seconds")
defineFloat("FRONT_CLOCK_MODE", 73, {0, 0.2}, "Gauges","FRONT Clock Mode")
defineFloat("FRONT_CLOCK_FLIGHT_H", 67, {0, 1}, "Gauges","FRONT Clock Flight Time Hours")
defineFloat("FRONT_CLOCK_FLIGHT_M", 68, {0, 1}, "Gauges","FRONT Clock Flight Time Minutes")
defineFloat("FRONT_CLOCK_STOPP_M", 69, {0.0, 0.161, 0.317, 0.499, 0.675, 0.843, 1.0}, "Gauges","FRONT Clock Stopwatch 30 Minutes")
defineFloat("BACK_CLOCK_TIME_H", 405, {0, 1}, "Gauges","BACK Clock Current Time Hours")
defineFloat("BACK_CLOCK_TIME_M", 406, {0, 1}, "Gauges","BACK Clock Current Time Minutes")
defineFloat("BACK_CLOCK_TIME_S", 408, {0, 1}, "Gauges","BACK Clock Current Time Seconds")
defineFloat("BACK_CLOCK_MODE", 411, {0, 0.2}, "Gauges","BACK Clock Mode")
defineFloat("BACK_CLOCK_FLIGHT_H", 409, {0, 1}, "Gauges","BACK Clock Flight Time Hours")
defineFloat("BACK_CLOCK_FLIGHT_M", 410, {0, 1}, "Gauges","BACK Clock Flight Time Minutes")
defineFloat("BACK_CLOCK_STOPP_M", 407, {0.0, 0.161, 0.317, 0.499, 0.675, 0.843, 1.0}, "Gauges","BACK Clock Stopwatch 30 Minutes")

defineFloat("FRONT_ALT_KM", 52, {0, 1}, "Gauges","FRONT VD-20 Altimeter KM")
defineFloat("FRONT_ALT_M", 53, {0, 1}, "Gauges","FRONT VD-20 Altimeter M")
defineFloat("FRONT_ALT_IND_KM", 54, {0, 1}, "Gauges","FRONT VD-20 Altimeter Indicator KM")
defineFloat("FRONT_ALT_IND_M", 55, {0, 1}, "Gauges","FRONT VD-20 Altimeter Indicator M")
defineFloat("FRONT_ALT_PRESS", 55, {0, 1}, "Gauges","FRONT VD-20 Altimeter Pressure")
defineFloat("BACK_ALT_KM", 52, {0, 1}, "Gauges","BACK VD-20 Altimeter KM")
defineFloat("BACK_ALT_M", 53, {0, 1}, "Gauges","BACK VD-20 Altimeter M")
defineFloat("BACK_ALT_IND_KM", 54, {0, 1}, "Gauges","BACK VD-20 Altimeter Indicator KM")
defineFloat("BACK_ALT_IND_M", 55, {0, 1}, "Gauges","BACK VD-20 Altimeter Indicator M")
defineFloat("BACK_ALT_PRESS", 55, {0, 1}, "Gauges","BACK VD-20 Altimeter Pressure")

defineFloat("FRONT_RALT", 58, {0.0,	0.086,	0.439,	0.878,	0.955}, "Gauges","FRONT Radar Altimeter")
defineFloat("FRONT_RALT_DANGER", 59, {0.0,	0.094,	0.48,	0.998}, "Gauges","FRONT Radar Altimeter Danger Altitude")
defineFloat("FRONT_RALT_WARNFLAG", 59, {0.0, 1.0}, "Gauges","FRONT Radar Altimeter Warning Flag")
defineFloat("BACK_RALT", 58, {0.0,	0.086,	0.439,	0.878,	0.955}, "Gauges","BACK Radar Altimeter")
defineFloat("BACK_RALT_DANGER", 59, {0.0,	0.094,	0.48,	0.998}, "Gauges","BACK Radar Altimeter Danger Altitude")
defineFloat("BACK_RALT_WARNFLAG", 59, {0.0, 1.0}, "Gauges","BACK Radar Altimeter Warning Flag")

defineFloat("FRONT_ALT_100_PTR", 637, {0, 1}, "Gauges","FRONT Altimeter 100ft Ptr")
defineFloat("FRONT_ALT_10000", 632, {0, 1}, "Gauges","FRONT Altimeter 10000ft")
defineFloat("FRONT_ALT_1000", 631, {0, 1}, "Gauges","FRONT Altimeter 1000ft")
defineFloat("FRONT_ALT_100", 630, {0, 1}, "Gauges","FRONT Altimeter 100ft")
defineFloat("FRONT_PRESS_SET_0", 636, {0, 1}, "Gauges","FRONT Altimeter Pressure Setting 0")
defineFloat("FRONT_PRESS_SET_1", 635, {0, 1}, "Gauges","FRONT Altimeter Pressure Setting 1")
defineFloat("FRONT_PRESS_SET_2", 634, {0, 1}, "Gauges","FRONT Altimeter Pressure Setting 2")
defineFloat("FRONT_PRESS_SET_3", 633, {0, 1}, "Gauges","FRONT Altimeter Pressure Setting 3")
defineFloat("BACK_ALT_100_PTR", 737, {0, 1}, "Gauges","BACK Altimeter 100ft Ptr")
defineFloat("BACK_ALT_10000", 732, {0, 1}, "Gauges","BACK Altimeter 10000ft")
defineFloat("BACK_ALT_1000", 731, {0, 1}, "Gauges","BACK Altimeter 1000ft")
defineFloat("BACK_ALT_100", 730, {0, 1}, "Gauges","BACK Altimeter 100ft")
defineFloat("BACK_PRESS_SET_0", 736, {0, 1}, "Gauges","BACK Altimeter Pressure Setting 0")
defineFloat("BACK_PRESS_SET_1", 735, {0, 1}, "Gauges","BACK Altimeter Pressure Setting 1")
defineFloat("BACK_PRESS_SET_2", 734, {0, 1}, "Gauges","BACK Altimeter Pressure Setting 2")
defineFloat("BACK_PRESS_SET_3", 733, {0, 1}, "Gauges","BACK Altimeter Pressure Setting 3")

defineFloat("FRONT_VARIOMETER", 74, {-1.0,	-0.875, -0.775,	-0.44,	0.0,	0.44,	0.775,	0.875,	1.0}, "Gauges","FRONT Variometer")
defineFloat("FRONT_VARIOMETER_TURN", 75, {-1.0, -0.58, -0.275, 0.275, 0.58, 1.0}, "Gauges","FRONT Variometer Turn Indicator")
defineFloat("FRONT_VARIOMETER_SLIP", 76, {-1.0, 1.0},"Gauges","FRONT Variometer Sideslip Indicator")
defineFloat("BACK_VARIOMETER", 416, {-1.0,	-0.875, -0.775,	-0.44,	0.0,	0.44,	0.775,	0.875,	1.0}, "Gauges","BACK Variometer")
defineFloat("BACK_VARIOMETER_TURN", 417, {-1.0, 1.0}, "Gauges","BACK Variometer Turn Indicator")
defineFloat("BACK_VARIOMETER_SLIP", 418, {-1.0, 1.0},"Gauges","BACK Variometer Sideslip Indicator")

defineFloat("FRONT_KPP1273K_ROLL", 38, {-1, 1}, "Gauges","FRONT Artifical Horizont KPP Roll")
defineFloat("FRONT_KPP1273K_PITCH", 31, {-0.5, 0.006, 0.5}, "Gauges","FRONT Artifical Horizont KPP Pitch")
defineFloat("FRONT_KPP1273K_SLIP", 40, {-1, 1}, "Gauges","FRONT Artifical Horizont KPP Sideslip")
defineFloat("FRONT_KPP1273K_DEVBAR_CRS", 35, {-1.0, 1.0}, "Gauges","FRONT Artifical Horizont KPP Course Deviation Bar")
defineFloat("FRONT_KPP1273K_DEVBAR_ATL", 34, {-1.0, 1.0}, "Gauges","FRONT Artifical Horizont KPP Altitude Deviation Bar")
defineFloat("FRONT_KPP1273K_BEACON_GLIDE", 36, {0, 1}, "Gauges","FRONT Artifical Horizont KPP Glide Beacon")
defineFloat("FRONT_KPP1273K_BEACON_LOCAL", 37, {0, 1}, "Gauges","FRONT Artifical Horizont KPP Localizer Beacon")
defineFloat("FRONT_KPP1273K_ARRETIR", 29, {0.0, 1.0}, "Gauges","FRONT Artifical Horizont KPP Arretir")
defineFloat("FRONT_KPP1273K_SDU_ROLL", 32, {-1, 1}, "Gauges","FRONT Artifical Horizont KPP SDU Roll")
defineFloat("FRONT_KPP1273K_SDU_PITCH", 33, {-1, 1}, "Gauges","FRONT Artifical Horizont KPP SDU Pitch ")
defineFloat("BACK_KPP1273K_ROLL", 375, {-1, 1}, "Gauges","BACK Artifical Horizont KPP Roll")
defineFloat("BACK_KPP1273K_PITCH", 368, {-0.5, 0.006, 0.5}, "Gauges","BACK Artifical Horizont KPP Pitch")
defineFloat("BACK_KPP1273K_SLIP", 377, {-1, 1}, "Gauges","BACK Artifical Horizont KPP Sideslip")
defineFloat("BACK_KPP1273K_DEVBAR_CRS", 372, {-1.0, 1.0}, "Gauges","BACK Artifical Horizont KPP Course Deviation Bar")
defineFloat("BACK_KPP1273K_DEVBAR_ATL", 371, {-1.0, 1.0}, "Gauges","BACK Artifical Horizont KPP Altitude Deviation Bar")
defineFloat("BACK_KPP1273K_BEACON_GLIDE", 373, {0, 1}, "Gauges","BACK Artifical Horizont KPP Glide Beacon")
defineFloat("BACK_KPP1273K_BEACON_LOCAL", 374, {0, 1}, "Gauges","BACK Artifical Horizont KPP Localizer Beacon")
defineFloat("BACK_KPP1273K_ARRETIR", 366, {0.0, 1.0}, "Gauges","BACK Artifical Horizont KPP Arretir")
defineFloat("BACK_KPP1273K_SDU_ROLL", 369, {-1, 1}, "Gauges","BACK Artifical Horizont KPP SDU Roll")
defineFloat("BACK_KPP1273K_SDU_PITCH", 370, {-1, 1}, "Gauges","BACK Artifical Horizont KPP SDU Pitch ")

defineFloat("FRONT_HSI_HDG", 41, {1.0, 0.0}, "Gauges"," FRONT HSI Heading")
defineFloat("FRONT_HSI_COM_CRS_NEEDLE", 42, {1.0, 0.0}, "Gauges","FRONT HSI Commanded Course Needle")
defineFloat("FRONT_HSI_BRG_NEEDLE", 43, {0.0, 1.0}, "Gauges","FRONT HSI Bearing Needle")
defineFloat("FRONT_HSI_DEV_BAR_CRS", 47, {-0.8, 0.8}, "Gauges","FRONT HSI Course Deviation Bar")
defineFloat("FRONT_HSI_DEV_BAR_ALT", 45, {-0.8, 0.8}, "Gauges","FRONT HSI Altitude Deviation Bar")
defineFloat("FRONT_HSI_BEACON_GLIDE", 46, {0, 1}, "Gauges","FRONT HSI Glide Beacon")
defineFloat("FRONT_HSI_BEACON_LOCAL", 44, {0, 1}, "Gauges","FRONT HSI Localizer Beacon")
defineFloat("BACK_HSI_HDG", 378, {1.0, 0.0}, "Gauges"," BACK HSI Heading")
defineFloat("BACK_HSI_COM_CRS_NEEDLE", 379, {1.0, 0.0}, "Gauges","BACK HSI Commanded Course Needle")
defineFloat("BACK_HSI_BRG_NEEDLE", 380, {0.0, 1.0}, "Gauges","BACK HSI Bearing Needle")
defineFloat("BACK_HSI_DEV_BAR_CRS", 384, {-0.8, 0.8}, "Gauges","BACK HSI Course Deviation Bar")
defineFloat("BACK_HSI_DEV_BAR_ALT", 382, {-0.8, 0.8}, "Gauges","BACK HSI Altitude Deviation Bar")
defineFloat("BACK_HSI_BEACON_GLIDE", 383, {0, 1}, "Gauges","BACK HSI Glide Beacon")
defineFloat("BACK_HSI_BEACON_LOCAL", 381, {0, 1}, "Gauges","BACK HSI Localizer Beacon")

defineFloat("FRONT_RSBN_RANGE_1", 64, {0, 1}, "Gauges","FRONT Range RSBN 1KM")
defineFloat("FRONT_RSBN_RANGE_10", 65, {0, 1}, "Gauges","FRONT Range RSBN 10KM")
defineFloat("FRONT_RSBN_RANGE_100", 66, {0, 1}, "Gauges","FRONT Range RSBN 100KM")
defineFloat("BACK_RSBN_RANGE_1", 402, {0, 1}, "Gauges","BACK Range RSBN 1KM")
defineFloat("BACK_RSBN_RANGE_10", 403, {0, 1}, "Gauges","BACK Range RSBN 10KM")
defineFloat("BACK_RSBN_RANGE_100", 404, {0, 1}, "Gauges","BACK Range RSBN 100KM")
defineFloat("FRONT_RSBN_CHAN_NAV_GAUGE", 189, {0.0, 0.39}, "Gauges","FRONT RSBN NAV Channel")
defineFloat("FRONT_RSBN_CHAN_LAND_GAUGE", 190, {0.0, 0.39}, "Gauges","FRONT RSBN LAND Channel")
defineFloat("FRONT_RSBN_BACK_LIGHT", 580, {0.0, 1.0}, "Gauges","FRONT RSBN Back Panel Light")

defineFloat("FRONT_IAS", 49, {0.0, 0.08,  0.186, 0.296, 0.436, 0.55, 0.635, 0.705, 0.765, 0.824, 1.0}, "Gauges","FRONT IAS (indicated)")
defineFloat("FRONT_TAS", 50, {0.0, 0.08,  0.186, 0.296, 0.436, 0.55, 0.635, 0.705, 0.765, 0.824, 1.0}, "Gauges","FRONT TAS (true)")
defineFloat("FRONT_MACH", 51, {0, 1}, "Gauges","FRONT Number of MACH")
defineFloat("BACK_IAS", 386, {0.0, 0.08,  0.186, 0.296, 0.436, 0.55, 0.635, 0.705, 0.765, 0.824, 1.0}, "Gauges","BACK IAS (indicated)")
defineFloat("BACK_TAS", 387, {0.0, 0.08,  0.186, 0.296, 0.436, 0.55, 0.635, 0.705, 0.765, 0.824, 1.0}, "Gauges","BACK TAS (true)")
defineFloat("BACK_MACH", 388, {0, 1}, "Gauges","BACK Number of MACH")

defineFloat("FRONT_RKL41_NEEDLE", 77, {0, 1}, "Gauges","FRONT RKL Indicator Needle")
defineFloat("FRONT_RKL41_SIGNAL", 156, {0, 1}, "Gauges","FRONT RKL Signal Strength")
defineFloat("BACK_RKL41_NEEDLE", 420, {0, 1}, "Gauges","BACK RKL Indicator Needle")
defineFloat("BACK_RKL41_SIGNAL", 513, {0, 1}, "Gauges","BACK RKL Signal Strength")
defineFloat("FRONT_RKL41_BACK_LIGHT", 563, {0.0, 1.0}, "Gauges","FRONT RKL-41 Back Panel Light")
defineFloat("BACK_RKL41_BACK_LIGHT", 563, {0.0, 1.0}, "Gauges","BACK RKL-41 Back Panel Light")
defineFloat("BACK_KM8_HDG", 531, {0, 1}, "Gauges","BACK KM-8 Heading")
defineFloat("BACK_KM8_VARIATION", 531, {1.0, -1.0}, "Gauges","BACK KM-8 Variation")

defineFloat("FRONT_VOLT_METER", 92, {0, 1}, "Gauges","FRONT Voltmeter")
defineFloat("FRONT_AMP_METER", 93, {0, 1}, "Gauges","FRONT Ampermeter")

defineFloat("FRONT_OXY_PRESS", 301, {0.0, 0.025, 0.925, 1.0}, "Gauges","FRONT Oxygen Pressure")
defineFloat("FRONT_OXY_FLOW", 302, {0, 1}, "Gauges","FRONT Oxygen Flow Blinker")
defineFloat("BACK_OXY_PRESS", 477, {0.0, 0.025, 0.925, 1.0}, "Gauges","BACK Oxygen Pressure")
defineFloat("BACK_OXY_FLOW", 478, {0, 1}, "Gauges","BACK Oxygen Flow Blinker")

defineFloat("FRONT_ACCEL_G", 86, {0, 1}, "Gauges","FRONT G Indicator")
defineFloat("FRONT_ACCEL_MIN", 88, {0.31, 0.695}, "Gauges","FRONT Min G Indicator")
defineFloat("FRONT_ACCEL_MAX", 87, {0, 1}, "Gauges","FRONT Max G Indicator")

defineFloat("FRONT_CPT_ALT", 95, {0, 1}, "Gauges","FRONT Cockpit Altitude")
defineFloat("FRONT_PRESS_DIFF", 96, {0.0, 0.102, 0.202,	0.398, 0.779, 1.0}, "Gauges","FRONT Differantial Cabine Pressure")
defineFloat("BACK_CPT_ALT", 95, {0, 1}, "Gauges","BACK Cockpit Altitude")
defineFloat("BACK_PRESS_DIFF", 96, {0.0, 0.102, 0.202,	0.398, 0.779, 1.0}, "Gauges","BACK Differantial Cabine Pressure")

defineFloat("FRONT_MAIN_HYD_PRESS", 198, {0, 1}, "Gauges","FRONT Main Hydraulic Pressure")
defineFloat("FRONT_AUX_HYD_PRESS", 200, {0, 1}, "Gauges","FRONT AUX Hydraulic Pressure")
defineFloat("FRONT_BRAKE_L_HYD_PRESS", 98, {0, 1}, "Gauges","FRONT Left Brake Pressure")
defineFloat("FRONT_BRAKE_R_HYD_PRESS", 99, {0, 1}, "Gauges","FRONT Right Brake Pressure")
defineFloat("FRONT_BRAKE_AUX_HYD_PRESS", 100, {0, 1}, "Gauges","FRONT AUX Brake Pressure")

defineFloat("FRONT_FUEL_QUANT", 91, {0.0, 0.127, 0.239, 0.35, 0.458, 0.56, 0.685, 0.82, 1.0}, "Gauges","FRONT Fuel Quantity")
defineFloat("FRONT_FUEL_PRESS", 81, {0.0, 0.06, 0.148, 0.323, 0.547, 0.659, 0.801, 1.0}, "Gauges","FRONT Fuel Pressure")
defineFloat("FRONT_FAN_RPM", 85, {0.0, 0.09, 0.18, 0.28, 0.372, 0.468, 0.555, 0.645, 0.733, 0.822, 0.909, 1.0}, "Gauges","FRONT FAN RPM")
defineFloat("FRONT_COMP_RPM", 84, {0.0, 0.09, 0.18, 0.28, 0.372, 0.468, 0.555, 0.645, 0.733, 0.822, 0.909, 1.0}, "Gauges","FRONT Compressor RPM")
defineFloat("FRONT_ENG_TEMP", 90, {0, 1}, "Gauges","FRONT Engine Temperature")
defineFloat("FRONT_ENG_VIB", 94, {0, 1}, "Gauges","FRONT Engine Vibrations Indicator")
defineFloat("FRONT_OIL_TEMP", 83, {0.0, 0.323, 0.576, 0.817, 1.0}, "Gauges","FRONT Oil Temperature")
defineFloat("FRONT_OIL_PRESS", 82, {0.0, 0.077, 1.0}, "Gauges","FRONT Oil Pressure")
defineFloat("FRONT_PITCH_TRIM", 247, {1.0, -1.0}, "Gauges","FRONT Pitch Trim Indicator")
defineFloat("BACK_FUEL_QUANT", 427, {0.0, 1.0}, "Gauges","BACK Fuel Quantity")
defineFloat("BACK_FUEL_PRESS", 421, {0.0, 0.06, 0.148, 0.323, 0.547, 0.659, 0.801, 1.0}, "Gauges","BACK Fuel Pressure")
defineFloat("BACK_FAN_RPM", 425, {0.0, 0.09, 0.18, 0.28, 0.372, 0.468, 0.555, 0.645, 0.733, 0.822, 0.909, 1.0}, "Gauges","BACK FAN RPM")
defineFloat("BACK_COMP_RPM", 424, {0.0, 0.09, 0.18, 0.28, 0.372, 0.468, 0.555, 0.645, 0.733, 0.822, 0.909, 1.0}, "Gauges","BACK Compressor RPM")
defineFloat("BACK_ENG_TEMP", 426, {0, 1}, "Gauges","BACK Engine Temperature")
defineFloat("BACK_OIL_TEMP", 423, {0.0, 0.323, 0.576, 0.817, 1.0}, "Gauges","BACK Oil Temperature")
defineFloat("BACK_OIL_PRESS", 422, {0.0, 0.077, 1.0}, "Gauges","BACK Oil Pressure")

defineFloat("FRONT_INST_LIGHT_INTENS", 553, {0.0, 1.0}, "Gauges","FRONT Instrument Lights Intensity")
defineFloat("FRONT_COMP_LIGHT_INTENS", 558, {0.0, 1.0}, "Gauges","FRONT Compass Lights Intensity")
defineFloat("FRONT_EMERG_LIGHT_INTENS", 555, {0.0, 1.0}, "Gauges","FRONT Emergency Lights Intensity")
defineFloat("BACK_INST_LIGHT_INTENS", 559, {0.0, 1.0}, "Gauges","BACK Instrument Lights Intensity")
defineFloat("BACK_EMERG_LIGHT_INTENS", 560, {0.0, 1.0}, "Gauges","BACK Emergency Lights Intensity")

------------------------------------ L-39 Lights --------------------------------------------------------------------

defineIndicatorLight("FRONT_WP_DANGER_ALT_LAMP", 2, "Warning, Caution and IndicatorLights","FRONT Dangerous Altitude Lamp (red)")
defineIndicatorLight("FRONT_RV5_DANGER_ALT_LAMP", 63, "Warning, Caution and IndicatorLights","FRONT Dangerous Radar Altitude Lamp (yellow)")
defineIndicatorLight("BACK_WP_DANGER_ALT_LAMP", 343, "Warning, Caution and IndicatorLights","BACK Dangerous Altitude Lamp (red)")
defineIndicatorLight("BACK_RV5_DANGER_ALT_LAMP", 401, "Warning, Caution and IndicatorLights","BACK Dangerous Radar Altitude Lamp (yellow)")

defineIndicatorLight("FRONT_L_GEAR_UP_LAMP", 109, "Warning, Caution and IndicatorLights","FRONT Left Gear UP Lamp (red)")
defineIndicatorLight("FRONT_N_GEAR_UP_LAMP", 110, "Warning, Caution and IndicatorLights","FRONT Nose Gear UP Lamp (red)")
defineIndicatorLight("FRONT_R_GEAR_UP_LAMP", 111, "Warning, Caution and IndicatorLights","FRONT Right Gear UP Lamp (red)")
defineIndicatorLight("FRONT_L_GEAR_DOWN_LAMP", 112, "Warning, Caution and IndicatorLights","FRONT Left Gear DOWN Lamp (green)")
defineIndicatorLight("FRONT_N_GEAR_DOWN_LAMP", 113, "Warning, Caution and IndicatorLights","FRONT Nose Gear DOWN Lamp (green)")
defineIndicatorLight("FRONT_R_GEAR_DOWN_LAMP", 114, "Warning, Caution and IndicatorLights","FRONT Right Gear DOWN Lamp (green)")
defineIndicatorLight("FRONT_GEAR_TRANS_LAMP", 115, "Warning, Caution and IndicatorLights","FRONT Gear in Transition Lamp (red)")
defineIndicatorLight("FRONT_DOORS_OUT_LAMP", 116, "Warning, Caution and IndicatorLights","FRONT Doors Out Lamp (red)")
defineIndicatorLight("FRONT_AIRBRAKE_LAMP", 117, "Warning, Caution and IndicatorLights","FRONT Airbrake Lamp (green)")
defineIndicatorLight("BACK_L_GEAR_UP_LAMP", 428, "Warning, Caution and IndicatorLights","BACK Left Gear UP Lamp (red)")
defineIndicatorLight("BACK_N_GEAR_UP_LAMP", 429, "Warning, Caution and IndicatorLights","BACK Nose Gear UP Lamp (red)")
defineIndicatorLight("BACK_R_GEAR_UP_LAMP", 430, "Warning, Caution and IndicatorLights","BACK Right Gear UP Lamp (red)")
defineIndicatorLight("BACK_L_GEAR_DOWN_LAMP", 431, "Warning, Caution and IndicatorLights","BACK Left Gear DOWN Lamp (green)")
defineIndicatorLight("BACK_N_GEAR_DOWN_LAMP", 432, "Warning, Caution and IndicatorLights","BACK Nose Gear DOWN Lamp (green)")
defineIndicatorLight("BACK_R_GEAR_DOWN_LAMP", 433, "Warning, Caution and IndicatorLights","BACK Right Gear DOWN Lamp (green)")
defineIndicatorLight("BACK_GEAR_TRANS_LAMP", 434, "Warning, Caution and IndicatorLights","BACK Gear in Transition Lamp (red)")
defineIndicatorLight("BACK_DOORS_OUT_LAMP", 435, "Warning, Caution and IndicatorLights","BACK Doors Out Lamp (red)")
defineIndicatorLight("BACK_AIRBRAKE_LAMP", 436, "Warning, Caution and IndicatorLights","BACK Airbrake Lamp (green)")

defineIndicatorLight("FRONT_FLAPS_UP_LAMP", 278, "Warning, Caution and IndicatorLights","FRONT Flaps 0° Lamp (green)")
defineIndicatorLight("FRONT_FLAPS_TO_LAMP", 279, "Warning, Caution and IndicatorLights","FRONT Flaps 25° Lamp (green)")
defineIndicatorLight("FRONT_FLAPS_DN_LAMP", 280, "Warning, Caution and IndicatorLights","FRONT Flaps 44° Lamp (green)")
defineIndicatorLight("FRONT_FLAPS_UP_LAMP", 462, "Warning, Caution and IndicatorLights","FRONT Flaps 0° Lamp (green)")
defineIndicatorLight("FRONT_FLAPS_TO_LAMP", 463, "Warning, Caution and IndicatorLights","FRONT Flaps 25° Lamp (green)")
defineIndicatorLight("FRONT_FLAPS_DN_LAMP", 464, "Warning, Caution and IndicatorLights","FRONT Flaps 44° Lamp (green)")

defineIndicatorLight("FRONT_RKL41_FAR_NDB_SEL_LAMP", 561, "Warning, Caution and IndicatorLights","FRONT RKL-41 Far NDB Selector Lamp (white)")
defineIndicatorLight("FRONT_RKL41_NEAR_NDB_SEL_LAMP", 570, "Warning, Caution and IndicatorLights","FRONT RKL-41 Near NDB Selector Lamp (white)")
defineIndicatorLight("BACK_RKL41_FAR_NDB_SEL_LAMP", 564, "Warning, Caution and IndicatorLights","BACK RKL-41 Far NDB Selector Lamp (white)")
defineIndicatorLight("BACK_RKL41_NEAR_NDB_SEL_LAMP", 571, "Warning, Caution and IndicatorLights","BACK RKL-41 Near NDB Selector Lamp (white)")

----------------------------------------------------------------------------------------------------------------------------- 2do
--- Elec syst lamps
defineIndicatorLight("MRP_56_lamp", 18, "l-39 lamps","MRP 56")
defineIndicatorLight("MainGen_lamp", 6, "l-39 lamps","Main generator")
defineIndicatorLight("ReservGen_lamp", 6, "l-39 lamps","Reserve generator")
defineIndicatorLight("Inverter115_lamp", 12, "l-39 lamps","inverter 115v")
defineIndicatorLight("Inverter363_lamp", 16, "l-39 lamps","inverter 3x36v")
defineIndicatorLight("GroundPower_lamp", 316, "l-39 lamps","Ground power")
--- RSBN (HSI)
defineIndicatorLight("RSBN_Azim_Correction", 185, "l-39 lamps","RSBN correction AZIM")
defineIndicatorLight("RSBN_Range_Correction", 186, "l-39 lamps","RSBN correction D")
defineIndicatorLight("BreakdownFinished_lamp", 15, "l-39 lamps","BreakdownFinished_lamp")
defineIndicatorLight("defineIndicatorLight", 123, "l-39 lamps","GMK tilt")
defineIndicatorLight("defineIndicatorLight", 206, "l-39 lamps","GMK tilt PU-26")
defineIndicatorLight("HSI_Accordance", 19, "l-39 lamps","HSI ok")
---RSBN_Azim_Correct = create_default_lamp(359, controllers.RSBN_Azimuth_Correction)
---RSBN_Range_Correct = create_default_lamp(362, controllers.RSBN_Range_Correction)
--- Fuel and turbostarter
defineIndicatorLight("EmergFuelFwd_lamp", 27, "l-39 lamps","Emergency fuel system")
defineIndicatorLight("TurboStarter_lamp", 23, "l-39 lamps","Turbo starter")
defineIndicatorLight("FwdRemain150_lamp", 4, "l-39 lamps","Remain 150Kg")
defineIndicatorLight("FwdDoNotStart_lamp", 7, "l-39 lamps","Do not start")
defineIndicatorLight("FwdFuelFilter_lamp", 26, "l-39 lamps","Fuel Filter")
defineIndicatorLight("L-39C_FwdWingTanks_lamp", 14, "l-39 lamps","L-39C Wing Tanks Empty")
defineIndicatorLight("L-39ZA_FwdWingTanks_lamp", 13, "l-39 lamps","L-39ZA Wing Tanks Empty")
--- Trim
defineIndicatorLight("TrimmerRollNeutralFwd_lamp", 246, "l-39 lamps","Roll trim neutral")
--- MACH
defineIndicatorLight("MachMeterLampFwd", 3, "l-39 lamps","Over Mach")
--- Canopy
defineIndicatorLight("FwdCanopyNotClosed", 10, "l-39 lamps","Canopy not closed")
--- Pitot
defineIndicatorLight("LeftPitot_lamp", 556, "l-39 lamps","Pitot Left")
defineIndicatorLight("RightPitot_lamp", 557, "l-39 lamps","Pitot Right")
--- Vibrations
defineIndicatorLight("FwdVibration_lamp", 8, "l-39 lamps","High vibrations")
--- Fire
defineIndicatorLight("FwdFire_lamp", 1, "l-39 lamps","FIRE")
--- T°4 and Oil pressur
defineIndicatorLight("FwdEngineTemperature700_lamp", 28, "l-39 lamps","T4 700")
defineIndicatorLight("FwdEngineTemperature730_lamp", 24, "l-39 lamps","T4 730")
defineIndicatorLight("FwdEngineMinOilPressure_lamp", 20, "l-39 lamps","press oil mini")
--- Cockpit pressure & conditioning
defineIndicatorLight("FwdCockpitPressure_lamp", 11, "l-39 lamps","Cockpit overpress")
defineIndicatorLight("FwdConditioningClosed_lamp", 22, "l-39 lamps","Clim Off")
defineIndicatorLight("EmergConditioning_lamp", 17, "l-39 lamps","Clim secours")
--- Anti icing syst
defineIndicatorLight("FwdDefrost_lamp", 25, "l-39 lamps","Anti icing on")
defineIndicatorLight("FwdIce_lamp", 21, "l-39 lamps","Icing Warn")
defineIndicatorLight("RIO_HeatingOk_lamp", 182, "l-39 lamps","RIO Heating On")
--- Hydrolics
defineIndicatorLight("FwdHydraulicPressureDrop_lamp", 5, "l-39 lamps","Hydro min press")
--- Master caution
defineIndicatorLight("FwdMasterDanger_lamp", 253, "l-39 lamps","SARTS")
--- Radio control
defineIndicatorLight("FwdRadioUnderControl_lamp", 562, "l-39 lamps","Control radio")
----------------------------------------------------------------------------------------------------------------------------- 2 do end


------------------------------------ L-39 Clickable Controls --------------------------------------------------------------------
-- ASP-3NMU Gunsight
defineToggleSwitch("FRONT_GUNSIDE_MODE",  1,3003, 101,"Gunsight", "FRONT ASP-3NMU Gunsight Mode, GYRO/FIXED")
definePotentiometer("FRONT_GUNSIDE_BRIGHT", 1, 3004, 102, {0, 1}, "Gunsight", "FRONT ASP-3NMU Gunsight Brightness Knob")
definePotentiometer("FRONT_GUNSIDE_WINGSPAN", 1, 3001, 103, {0, 1}, "Gunsight", "FRONT ASP-3NMU Target Wingspan Adjustment Dial (m)")
defineToggleSwitch("FRONT_GUNSIDE_FILTER",  1,3012, 104,"Gunsight", "FRONT ASP-3NMU Gunsight Color Filter, ON/OFF")
defineToggleSwitch("FRONT_GUNSIDE_RETICLE",  1,3011, 105,"Gunsight", "FRONT ASP-3NMU Gunsight Fixed Reticle Mask Lever")
definePotentiometer("FRONT_GUNSIDE_DEPRESS", 1, 3016, 106, {0, 1}, "Gunsight", "FRONT ASP-3NMU Gunsight Mirror Depression")
definePotentiometer("FRONT_GUNSIDE_DISTANCE", 1, 3002, 107, {0, 1}, "Gunsight", "FRONT ASP-3NMU Gunsight Target Distance")

-- CLOCK 
definePushButton("FRONT_CLOCK_PUSH_L", 12, 3001, 335,"Clock" , "FRONT Clock Left Push Button")
defineRotary("FRONT_CLOCK_ROTATE_L", 12, 3003, 336, "Clock", "FRONT Clock Left Rotate Knob")
definePushButton("FRONT_CLOCK_PUSH_R", 12, 3004, 337,"Clock" , "FRONT Clock Right Push Button")
defineRotary("FRONT_CLOCK_ROTATE_R", 12, 3005, 338, "Clock", "FRONT Clock Right Rotate Knob")
definePushButton("BACK_CLOCK_PUSH_L", 13, 3001, 412,"Clock" , "BACK Clock Left Push Button")
defineRotary("BACK_CLOCK_ROTATE_L", 13, 3003, 413, "Clock", "BACK Clock Left Rotate Knob")
definePushButton("BACK_CLOCK_PUSH_R", 13, 3004, 414,"Clock" , "BACK Clock Right Push Button")
defineRotary("BACK_CLOCK_ROTATE_R", 13, 3005, 415, "Clock", "BACK Clock Right Rotate Knob")

-- VD-20
definePotentiometer("FRONT_VD20_PRESS", 9, 3001, 57, {0, 1}, "VD20", "FRONT Baro Pressure QFE Knob")
definePotentiometer("BACK_VD20_PRESS", 10, 3001, 57, {0, 1}, "VD20", "BACK Baro Pressure QFE Knob")

--RV-5M
definePushButton("FRONT_RV5M_TEST", 14, 3002, 60,"RV5M" , "FRONT RV-5M Radio Altimeter Test Button")
defineRotary("FRONT_RV5M_HEIGH_KNOB", 14, 3001, 61, "RV5M", "FRONT RV-5M Radio Altimeter Decision Height Knob")
definePushButton("BACK_RV5M_TEST", 14, 3005, 398,"RV5M" , "BACK RV-5M Radio Altimeter Test Button")
defineRotary("BACK_RV5M_HEIGH_KNOB", 14, 3004, 399, "RV5M", "BACK RV-5M Radio Altimeter Decision Height Knob")

-- GMK 
defineToggleSwitch("FRONT_GMK_SELECT",  17,3002, 204,"GMK", "FRONT GMK-1AE GMC Hemisphere Selection Switch, N(orth)/S(outh)")
defineToggleSwitch("FRONT_GMK_MODE",  17,3004, 207,"GMK", "FRONT GMK-1AE GMC Mode Switch, MC(Magnetic Compass Mode)/GC(Directional Gyro Mode)")
define3PosTumb("FRONT_GMK_TEST", 17, 3003, 205, "GMK", "FRONT GMK-1AE GMC Test Switch, 0/OFF/300")
define3PosTumb("FRONT_GMK_CRS_SEL", 17, 3005, 208, "GMK", "FRONT GMK-1AE GMC Course Selector Switch, CCW/OFF/CW")
definePotentiometer("FRONT_GMK_LATITUDE", 17, 3006, 209, {0.0,0.728}, "GMK", "FRONT GMK-1AE GMC Latitude Selector Knob")
definePushButton("FRONT_GMK_SET_GIRO", 17, 3012, 124,"GMK", "FRONT GMK-1AE MC Synchronization Button")
definePushButton("BACK_GMK_SET_GIRO", 17, 3013, 444,"GMK", "BACK GMK-1AE MC Synchronization Button")
definePotentiometer("FRONT_GMK_MAG_VAR", 17, 3014, 532, {0.0,1.0}, "GMK", "FRONT GMK-1AE Magnetic Declination Set Knob")

-- KPP-1273K
definePushButton("FRONT_KPP_ARRETIR", 22, 3002, 30,"KPP" , "FRONT KPP-1273K ADI Cage Button")
definePotentiometer("FRONT_KPP_SET", 22, 3003, 39, {-1.0, 1.0}, "KPP", "FRONT KPP-1273K ADI Trim Knob")
defineToggleSwitch("FRONT_SDU_SW",  41,3001, 177,"KPP", "FRONT SDU Switch, ON/OFF")
defineToggleSwitch("BACK_AGD_FAIL_PITCH",  22,3008, 460,"KPP", "BACK AGD Pitch Failure")
defineToggleSwitch("BACK_AGD_FAIL_BANK",  22,3009, 461,"KPP", "BACK AGD Bank Failure")
definePushButton("BACK_KPP_ARRETIR", 23, 3002, 367,"KPP" , "BACK KPP-1273K ADI Cage Button")
definePotentiometer("BACK_KPP_SET", 23, 3003, 376, {-1.0, 1.0}, "KPP", "BACK KPP-1273K ADI Trim Knob")

-- NPP
definePotentiometer("FRONT_HSI_CRS", 24, 3001, 48, {0.0, 1.0}, "NPP", "FRONT HSI Course Set Knob")
definePushButton("BACK_FAIL_CRS", 25, 3002, 526,"NPP" , "BACK Course Accordance")
defineToggleSwitch("BACK_FAIL_GMK",  24,3002, 458,"NPP", "BACK GMK Failure")
definePotentiometer("BACK_HSI_CRS", 25, 3001, 385, {0.0, 1.0}, "NPP", "BACK HSI Course Set Knob")

----------------------------------------------------------------------------------------------------------------------------- 2do
--ISKRA
--#
defineMultipositionSwitch("FRONT_RSBN_CHAN_NAV_KNOB",  31,3008, 191, 40, 0.025,"ISKRA", "FRONT RSBN Navigation Channel Selector Knob")
defineMultipositionSwitch("FRONT_RSBN_CHAN_LAND_KNOB",  31,3009, 192, 40, 0.025,"ISKRA", "FRONT RSBN Landing Channel Selector Knob")
--#
----------------------------------------------------------------------------------------------------------------------------- 2 do end

-- Variometer
definePotentiometer("FRONT_VV_SET", 15, 3001, 569, {0, 1}, "Variometer", "FRONT Variometer Adjustment Knob")
definePotentiometer("BACK_VV_SET", 16, 3001, 419, {0, 1}, "Variometer", "BACK Variometer Adjustment Knob")

----------------------------------------------------------------------------------------------------------------------------- 2do
-- RKL-41
----------------------------------------------------------------------------------------------------------------------------- 2 do end

-- Electric System
defineToggleSwitch("FRONT_BATTERY_SW",  4,3001, 141,"Electric System", "FRONT Accumulator Switch, ON/OFF")
defineToggleSwitch("FRONT_MAIN_GEN_SW",  4,3002, 142,"Electric System", "FRONT Main Generator Switch, ON/OFF")
defineToggleSwitch("FRONT_EMERG_GEN_SW",  4,3003, 143,"Electric System", "FRONT Emergency Generator Switch, ON/OFF")
defineToggleSwitch("FRONT_NET_SW",  4,3004, 502,"Electric System", "FRONT Net Switch, ON/OFF")
defineToggleSwitch("FRONT_EMERG_ENG_INST_PW",  4,3072, 169,"Electric System", "FRONT Emergency Engine Instruments Power Switch, ON/OFF")
definePushButton("FRONT_TURBO_BTN",  4,3005, 315,"Electric System", "FRONT Turbo Button")
defineToggleSwitch("FRONT_TURBO_SW_COVER",  4,3006, 314,"Electric System", "FRONT Turbo Button Cover, Open/Close")
definePushButton("BACK_TURBO_BTN",  4,3007, 488,"Electric System", "BACK Turbo Button")
defineToggleSwitch("BACK_TURBO_SW_COVER",  4,3008, 487,"Electric System", "BACK Turbo Button Cover, Open/Close")
defineToggleSwitch("FRONT_STOP_TURBO_SW",  4,3009, 313,"Electric System", "FRONT Stop Turbo Switch, ON/OFF")
defineToggleSwitch("FRONT_STOP_TURBO_COVER",  4,3010, 312,"Electric System", "FRONT Stop Turbo Switch Cover, Open/Close")
definePushButton("FRONT_ENGINE",  4,3011, 326,"Electric System", "FRONT Engine Button")
defineToggleSwitch("FRONT_ENGINE_COVER",  4,3012, 325,"Electric System", "FRONT Engine Button Cover")
definePushButton("BACK_ENGINE",  4,3013, 494,"Electric System", "BACK Engine Button")
defineToggleSwitch("BACK_ENGINE_COVER",  4,3014, 493,"Electric System", "BACK Engine Button Cover")
defineToggleSwitch("FRONT_STOP_ENGINE",  4,3015, 318,"Electric System", "FRONT Stop Engine Switch")
defineToggleSwitch("FRONT_STOP_ENGINE_COVER",  4,3016, 317,"Electric System", "FRONT Stop Engine Switch Cover, Open/Close")
defineToggleSwitch("BACK_STOP_ENGINE",  4,3017, 490,"Electric System", "BACK Stop Engine Switch")
defineToggleSwitch("BACK_STOP_ENGINE_COVER",  4,3018, 489,"Electric System", "BACK Stop Engine Switch Cover, Open/Close")
defineMultipositionSwitch("L39C_FRONT_ENG_START_MODE",  4,3019, 322, 3, 0.1,"Electric System", "L39C FRONT Engine Start Mode Switch")
define3PosTumb("L39ZA_FRONT_ENG_START_MODE",  4,3019, 322,"Electric System", "L39ZA FRONT Engine Start Mode Switch")
defineToggleSwitch("FRONT_ENG_STRT_MODE_COVER",  4,3020, 321,"Electric System", "FRONT Engine Start Mode Switch Cover, Open/Close")
defineToggleSwitch("FRONT_EMERG_FUEL",  4,3021, 320,"Electric System", "FRONT Emergency Fuel Switch")
defineToggleSwitch("FRONT_EMERG_FUEL_COVER",  4,3022, 319,"Electric System", "FRONT Emergency Fuel Switch Cover")
defineToggleSwitch("BACK_EMERG_FUEL",  4,3023, 492,"Electric System", "BACK Emergency Fuel Switch")
defineToggleSwitch("BACK_EMERG_FUEL_COVER",  4,3024, 491,"Electric System","BACK Emergency Fuel Switch Cover")
defineToggleSwitch("CB_ENGINE",  4,3025, 144,"Electric System", "CB Engine")
defineToggleSwitch("CB_AGD_GMK",  4,3026, 145,"Electric System", "CB AGD-GMK")
defineToggleSwitch("CB_INVERT1",  4,3027, 146,"Electric System", "CB Inverter 1 (AC 115V)")
defineToggleSwitch("CB_INVERT2",  4,3028, 147,"Electric System", "CB Inverter 2 (AC 115V)")
defineToggleSwitch("CB_RTL",  4,3029, 148,"Electric System", "CB RDO (ICS and Radio)")
defineToggleSwitch("CB_MRP_RV",  4,3030, 149,"Electric System", "CB MRP-RV (Marker Beacon Receiver and Radio Altimeter)")
defineToggleSwitch("CB_ISKRA",  4,3031, 150,"Electric System", "CB RSBN (ISKRA)")
defineToggleSwitch("CB_EMERG_SRO",  4,3032, 151,"Electric System", "CB IFF (SRO) Emergency Connection")
defineToggleSwitch("CB_EMERG_ISKRA",  4,3033, 152,"Electric System", "CB RSBN (ISKRA) Emergency Connection")
defineToggleSwitch("CB_WING_TANKS",  4,3034, 153,"Electric System", "CB Wing Tanks")
defineToggleSwitch("CB_RIO",  4,3035, 154,"Electric System", "CB RIO-3 De-Icing Signal")
defineToggleSwitch("CB_SDU",  4,3036, 155,"Electric System", "CB SDU")
defineToggleSwitch("CB_HEAT_SENSOR_AOA",  4,3037, 628,"Electric System", "CB Heating Sensor AOA")
defineToggleSwitch("CB_WEAPON",  4,3038, 629,"Electric System", "CB Weapon")
--defineToggleSwitch("CB_TANKS",  4,3039, XXX,"Electric System", "CB Tanks")
defineToggleSwitch("CB_AIR_COND",  4,3040, 211,"Electric System", "CB Air Conditioning")
defineToggleSwitch("CB_ANTI_ICE",  4,3041, 212,"Electric System", "CB Anti-Ice")
defineToggleSwitch("CB_PITOT_L",  4,3042, 213,"Electric System", "CB Pitot Left")
defineToggleSwitch("CB_PITOT_R",  4,3043, 214,"Electric System", "CB Pitot Right")
defineToggleSwitch("CB_PT500C",  4,3044, 215,"Electric System", "CB PT-500C")
defineToggleSwitch("CB_ARC",  4,3045, 216,"Electric System", "CB ARC")
defineToggleSwitch("CB_SRO",  4,3046, 217,"Electric System", "CB SRO")
defineToggleSwitch("CB_SEAT_HELMET",  4,3047, 218,"Electric System", "CB Seat Helmet")
defineToggleSwitch("CB_GEARS",  4,3048, 219,"Electric System", "CB Gears")
defineToggleSwitch("CB_CONTROL",  4,3049, 220,"Electric System", "CB Control")
defineToggleSwitch("CB_SIGNALING",  4,3050, 221,"Electric System", "CB Signaling")
defineToggleSwitch("CB_NAV_LIGHTS",  4,3051, 222,"Electric System", "CB Nav. Lights")
defineToggleSwitch("CB_SPOTLIGHT_L",  4,3052, 223,"Electric System", "CB Spotlight Left")
defineToggleSwitch("CB_SPOTLIGHT_R",  4,3053, 224,"Electric System", "CB Spotlight Right")
defineToggleSwitch("CB_LIGHT_RED",  4,3054, 225,"Electric System", "CB Red Lights")
defineToggleSwitch("CB_LIGHT_WHITE",  4,3055, 226,"Electric System", "CB White Lights")
defineToggleSwitch("CB_START_PANEL",  4,3056, 227,"Electric System", "CB Start Panel")
defineToggleSwitch("CB_BOOST_PUMP",  4,3057, 228,"Electric System", "CB Booster Pump")
defineToggleSwitch("CB_INGNITION_1",  4,3058, 229,"Electric System", "CB Ignition 1")
defineToggleSwitch("CB_INGNITION_2",  4,3059, 230,"Electric System", "CB Ignition 2")
defineToggleSwitch("CB_ENG_INSTR",  4,3060, 231,"Electric System", "CB Engine Instruments")
defineToggleSwitch("CB_FIRE",  4,3061, 232,"Electric System", "CB Fire")
defineToggleSwitch("CB_EMERG_JETT",  4,3062, 233,"Electric System", "CB Emergency Jettison")
defineToggleSwitch("CB_SARPP",  4,3063, 234,"Electric System", "CB SARPP")
defineToggleSwitch("CB_SEAT_INSTRUCTOR",  4,3064, 503,"Electric System", "CB Seat Instructor")
defineToggleSwitch("CB_SIGNAL_INSTRUCTOR",  4,3065, 504,"Electric System", "CB Signal Instructor")
defineToggleSwitch("CB_WEAPON_INSTRUCTOR",  4,3066, 505,"Electric System", "CB Weapon Instructor")
defineToggleSwitch("CB_GROUND_INTCOM",  4,3067, 512,"Electric System", "CB Ground Intercom")
definePushButton("PITOT_HEAT_ON_L",  4,3068, 294,"Electric System", "Standby (Left) Pitot Tube Heating ON Button")
definePushButton("PITOT_HEAT_OFF_L",  4,3069, 295,"Electric System", "Standby (Left) Pitot Tube Heating OFF Button")
definePushButton("PITOT_HEAT_ON_R",  4,3070, 292,"Electric System", "Main (Right) Pitot Tube Heating ON Button")
definePushButton("PITOT_HEAT_OFF_R",  4,3071, 293,"Electric System", "Main (Right) Pitot Tube Heating OFF Button")

----------------------------------------------------------------------------------------------------------------------------- 2 do 
-- Lights System
-- Weapon System
-- Oxygen System
----------------------------------------------------------------------------------------------------------------------------- 2 do end

-- SARPP
defineToggleSwitch("FRONT_SARPP_REC_SWITCH",  36,3001, 298,"SARPP", "FRONT SARPP Flight Recorder, ON/OFF")

-- Fuel System
defineToggleSwitch("FRONT_FUEL_SHUTOFF",  5,3002, 296,"Fuel System", "FRONT Fuel Shut-Off Lever")
defineToggleSwitch("BACK_FUEL_SHUTOFF",  5,3003, 475,"Fuel System", "BACK Fuel Shut-Off Lever")

----------------------------------------------------------------------------------------------------------------------------- 2 do 
-- Air System
defineRotary("FRONT_PRESS_HANDLE", 7, 3001, 245, "Air System", "FRONT ECS and Pressurization Handle, OFF/CANOPIES SEALED/ECS ON")
defineRotary("BACK_PRESS_HANDLE", 7, 3002, 245, "Air System", "BACK ECS and Pressurization Handle, OFF/CANOPIES SEALED/ECS ON")
--#

-- Anti-Icing System
-- Helmet Heating
----------------------------------------------------------------------------------------------------------------------------- 2 do end

-- SPU-9
defineToggleSwitch("FRONT_SPU_RESERV",  34,3004, 290,"SPU", "FRONT Reserve Intercom Switch, ON/OFF")
defineToggleSwitch("FRONT_SPU_ADF",  34,3003, 291,"SPU", "FRONT ADF Audio Switch, ADF/OFF")
definePotentiometer("FRONT_SPU_VOL", 34, 3001, 288, {0.0, 0.8}, "SPU", "FRONT Intercom Volume Knob")
definePotentiometer("FRONT_RADIO_VOL", 34, 3002, 289, {0.0, 0.8}, "SPU", "FRONT Radio Volume Knob")
definePushButton("FRONT_RADIO_BTN", 34, 3005, 134,"SPU", "FRONT Radio Button")
definePushButton("FRONT_SPU_BTN", 34, 3006, 133,"SPU", "FRONT Intercom Button")
defineToggleSwitch("BACK_SPU_RESERV",  34,3010, 473,"SPU", "BACK Reserve Intercom Switch, ON/OFF")
defineToggleSwitch("BACK_SPU_ADF",  34,3009, 474,"SPU", "BACK ADF Audio Switch, ADF/OFF")
definePotentiometer("BACK_SPU_VOL", 34, 3007, 471, {0.0, 0.8}, "SPU", "BACK Intercom Volume Knob")
definePotentiometer("BACK_RADIO_VOL", 34, 3008, 472, {0.0, 0.8}, "SPU", "BACK Radio Volume Knob")
definePushButton("BACK_RADIO_BTN", 34, 3011, 547,"SPU", "BACK Radio Button")
definePushButton("BACK_SPU_BTN", 34, 3012, 546,"SPU", "BACK Intercom Button")

-- R-832M
defineToggleSwitch("FRONT_RADIO_CONTROL",  19,3003, 287,"Radio", "FRONT Radio Control Switch - Flip for Control")
defineToggleSwitch("FRONT_RADIO_SQUELCH",  19,3002, 286,"Radio", "FRONT Radio Squelch Switch, ON/OFF")
defineMultipositionSwitch("FRONT_RADIO_CHN",  19,3001, 284, 20, 0.05,"Radio", "FRONT Radio Preset Channel Selector Knob")
defineToggleSwitch("BACK_RADIO_CONTROL",  19,3006, 470,"Radio", "BACK Radio Control Switch - Flip for Control")
defineToggleSwitch("BACK_RADIO_SQUELCH",  19,3005, 469,"Radio", "BACK Radio Squelch Switch, ON/OFF")
defineMultipositionSwitch("BACK_RADIO_CHN",  19,3004, 468, 20, 0.05,"Radio", "BACK Radio Preset Channel Selector Knob")

-- Engine Systems
definePushButton("FRONT_CONTROL_IV300", 6, 3001, 329,"Engine Systems", "FRONT IV-300 Engine Vibration Test Button")
defineToggleSwitch("FRONT_FIRE_COVER",  6,3002, 327,"Engine Systems", "FRONT Fire Extinguish Button Cover")
definePushButton("FRONT_FIRE", 6, 3003, 328,"Engine Systems", "FRONT Fire Extinguish Button")
defineToggleSwitch("BACK_FIRE_COVER",  6,3004, 495,"Engine Systems", "BACK Fire Extinguish Button Cover")
definePushButton("BACK_FIRE", 6, 3005, 496,"Engine Systems", "BACK Fire Extinguish Button")
define3PosTumb("FRONT_TEST_SSP", 6, 3006, 272, "Engine Systems", "FRONT Fire Warning Signal Test Switch I/OFF/II")
defineToggleSwitch("FRONT_RT12_OFF_COVER",  6,3007, 323,"Engine Systems", "FRONT RT-12 JPT Regulator Manual Disable Switch Cover")
defineToggleSwitch("FRONT_RT12_OFF",  6,3008, 324,"Engine Systems", "FRONT RT-12 JPT Regulator Manual Disable Switch")
defineToggleSwitch("FRONT_RT12_PW",  6,3009, 243,"Engine Systems", "FRONT RT-12 JPT Regulator Power Switch")
define3PosTumb("FRONT_RT12_TEST", 6, 3010, 242, "Engine Systems", "FRONT RT-12 JPT Regulator Test Switch I/OFF/II")
defineToggleSwitch("BACK_EGT_CONTROL",  6,3011, 499,"Engine Systems", "BACK EGT Indicator Switch")

-- Control System
definePushButton("FRONT_FLAPS_0", 37, 3001, 281,"Control System", "FRONT Flaps Flight Position 0")
definePushButton("FRONT_FLAPS_25", 37, 3002, 282,"Control System", "FRONT Flaps Takeoff Position 25")
definePushButton("FRONT_FLAPS_44", 37, 3003, 283,"Control System", "FRONT Flaps Landing Position 44")
definePushButton("BACK_FLAPS_0", 37, 3004, 465,"Control System", "BACK Flaps Flight Position 0")
definePushButton("BACK_FLAPS_25", 37, 3005, 466,"Control System", "BACK Flaps Takeoff Position 25")
definePushButton("BACK_FLAPS_44", 37, 3006, 467,"Control System", "BACK Flaps Landing Position 44")
defineToggleSwitch("BACK_THROTTLE_LIMIT",  37,3021, 549,"Control System", "BACK Throttle Limiter")
definePushButton("FRONT_AIR_BRAKE_BTN", 37, 3008, 135,"Control System", "FRONT Air Brake Push Switch")
defineToggleSwitch("FRONT_AIR_BRAKE_SW",  37,3007, 136,"Control System", "FRONT Air Brake Switch")
define3PosTumb("BACK_AIR_BRAKE_SW", 37, 3009, 548, "Control System", "BACK Air Brake Switch")
define3PosTumb("FRONT_GEAR_LEVER", 37, 3011, 118, "Control System", "FRONT Landing Gear Control Lever")
define3PosTumb("BACK_GEAR_LEVER", 37, 3012, 437, "Control System", "BACK Landing Gear Control Lever")
definePotentiometer("FRONT_BRAKE_CONTROL", 37, 3016, 334, {-1, 1}, "Control System", "FRONT Emergency/Parking Wheel Brake Lever")
definePotentiometer("BACK_BRAKE_CONTROL", 37, 3017, 501, {-1, 1}, "Control System", "BACK Emergency/Parking Wheel Brake Lever")
defineToggleSwitch("FRONT_BRAKE_CONTROL_LOCK",  37,3024, 334,"Control System", "FRONT Parking Brake Lever Flag")
defineToggleSwitch("FRONT_EMERG_HYD",  35,3001, 197,"Control System", "FRONT Main and Emergency Hydraulic Systems Interconnection Lever ON/OFF")
defineToggleSwitch("FRONT_EMERG_GEAR",  35,3003, 194,"Control System", "FRONT Emergency Landing Gear Extension Lever ON/OFF")
defineToggleSwitch("FRONT_EMERG_FLAPS",  35,3005, 195,"Control System", "FRONT Emergency Flaps Extension Lever ON/OFF")
defineToggleSwitch("FRONT_EMERG_GEN",  35,3007, 196,"Control System", "FRONT RAT Emergency Generator Lever ON/OFF")
defineToggleSwitch("BACK_EMERG_HYD",  35,3002, 536,"Control System", "BACK Main and Emergency Hydraulic Systems Interconnection Lever ON/OFF")
defineToggleSwitch("BACK_EMERG_GEAR",  35,3004, 533,"Control System", "BACK Emergency Landing Gear Extension Lever ON/OFF")
defineToggleSwitch("BACK_EMERG_FLAPS",  35,3006, 534,"Control System", "BACK Emergency Flaps Extension Lever ON/OFF")
defineToggleSwitch("BACK_EMERG_GEN",  35,3008, 535,"Control System", "BACK RAT Emergency Generator Lever ON/OFF")
define3PosTumb("BACK_PRESS_TOTAL", 39, 3002, 456, "Control System", "BACK Full Pressure Failure Lever, ON/STBY/FAILURE")
define3PosTumb("BACK_PRESS_STATIC", 39, 3001, 457, "Control System", "BACK Static Pressure Failure Lever, ON/STBY/FAILURE")

-- Accelerometer
definePushButton("FRONT_G_RESET", 33, 3001, 89,"Accelerometer", "FRONT Reset G Limits Button")

-- Canopy
defineToggleSwitch("FRONT_CANOPY_HANDLE",  2,3001, 998,"Canopy", "FRONT Canopy Handle")
defineToggleSwitch("BACK_CANOPY_HANDLE",  2,3002, 999,"Canopy", "BACK Canopy Handle")
defineToggleSwitch("FRONT_CANOPY_LOCK_HANDLE",  2,3007, 285,"Canopy", "FRONT Canopy Lock Handle")
defineToggleSwitch("BACK_CANOPY_LOCK_HANDLE",  2,3008, 485,"Canopy", "BACK Canopy Lock Handle")
definePushButton("FRONT_CANOPY_JETT", 2, 3009, 244,"Canopy", "FRONT Canopy Emergency Jettison Handle")
definePushButton("BACK_CANOPY_JETT", 2, 3010, 539,"Canopy", "BACK Canopy Emergency Jettison Handle")

-- Hood, Rear Cockpit
defineToggleSwitch("BACK_HOOD_CONTROL",  2,3006, 1000,"Hood", "BACK Instrument Flight Practice Hood Control Handle, EXTEND/RETRACT")

-- Pitot Selector
defineToggleSwitch("FRONT_PITOT_CONTROL",  37,3022, 333,"Pitot", "FRONT Pitot Tube Selector Lever, STBY(Left)/MAIN(Right)")

-- Misc
defineToggleSwitch("FRONT_PANEL_HOOD",  0,3003, 627,"Misc", "FRONT Panel Visor Extend")

------------------------------------ L-39 Readings --------------------------------------------------------------------

local function getRSBNNAV()
    local digit = string.format("%.0f", GetDevice(0):get_argument_value(191)*40+1)
    return tonumber(digit) 
end

local function getRSBNNAVS()
    local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(191)*40+1)
    return tostring(digit1) 
end
defineIntegerFromGetter("FRONT_RSBN_CHAN_NAV_DISPLAY", getRSBNNAV, 99, "Readings", "FRONT RSBN NAV Channel Display")
defineString("FRONT_RSBN_CHAN_NAV_DISPLAY_STRING", getRSBNNAVS, 99, "Readings", "FRONT RSBN NAV Channel Display (string)")

local function getRSBNLAND()
    local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(192)*40+1)
    return tonumber(digit2)
end

local function getRSBNLANDS()
    local digit3 = string.format("%.0f", GetDevice(0):get_argument_value(192)*40+1)
    return tostring(digit3)
end
defineIntegerFromGetter("FRONT_RSBN_CHAN_LAND_DISPLAY", getRSBNLAND, 99, "Readings", "FRONT RSBN LAND Channel Display")
defineString("FRONT_RSBN_CHAN_LAND_DISPLAY_STRING", getRSBNLANDS, 99, "Readings", "FRONT RSBN LAND Channel Display (string)")
  
BIOS.protocol.endModule()