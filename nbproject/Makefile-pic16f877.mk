#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic16f877.mk)" "nbproject/Makefile-local-pic16f877.mk"
include nbproject/Makefile-local-pic16f877.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic16f877
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=kline_recv.c kline_send.c uart.c pulls.c kline.c kline_utils.c kline_time_functions.c fillers.c i2c.c i2c_utils.c simon_hd44780_lcd.c configuration_bits.c interrupts.c main.c system.c user.c debug_leds.c timers.c portas.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/kline_recv.p1 ${OBJECTDIR}/kline_send.p1 ${OBJECTDIR}/uart.p1 ${OBJECTDIR}/pulls.p1 ${OBJECTDIR}/kline.p1 ${OBJECTDIR}/kline_utils.p1 ${OBJECTDIR}/kline_time_functions.p1 ${OBJECTDIR}/fillers.p1 ${OBJECTDIR}/i2c.p1 ${OBJECTDIR}/i2c_utils.p1 ${OBJECTDIR}/simon_hd44780_lcd.p1 ${OBJECTDIR}/configuration_bits.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/user.p1 ${OBJECTDIR}/debug_leds.p1 ${OBJECTDIR}/timers.p1 ${OBJECTDIR}/portas.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/kline_recv.p1.d ${OBJECTDIR}/kline_send.p1.d ${OBJECTDIR}/uart.p1.d ${OBJECTDIR}/pulls.p1.d ${OBJECTDIR}/kline.p1.d ${OBJECTDIR}/kline_utils.p1.d ${OBJECTDIR}/kline_time_functions.p1.d ${OBJECTDIR}/fillers.p1.d ${OBJECTDIR}/i2c.p1.d ${OBJECTDIR}/i2c_utils.p1.d ${OBJECTDIR}/simon_hd44780_lcd.p1.d ${OBJECTDIR}/configuration_bits.p1.d ${OBJECTDIR}/interrupts.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/system.p1.d ${OBJECTDIR}/user.p1.d ${OBJECTDIR}/debug_leds.p1.d ${OBJECTDIR}/timers.p1.d ${OBJECTDIR}/portas.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/kline_recv.p1 ${OBJECTDIR}/kline_send.p1 ${OBJECTDIR}/uart.p1 ${OBJECTDIR}/pulls.p1 ${OBJECTDIR}/kline.p1 ${OBJECTDIR}/kline_utils.p1 ${OBJECTDIR}/kline_time_functions.p1 ${OBJECTDIR}/fillers.p1 ${OBJECTDIR}/i2c.p1 ${OBJECTDIR}/i2c_utils.p1 ${OBJECTDIR}/simon_hd44780_lcd.p1 ${OBJECTDIR}/configuration_bits.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/user.p1 ${OBJECTDIR}/debug_leds.p1 ${OBJECTDIR}/timers.p1 ${OBJECTDIR}/portas.p1

# Source Files
SOURCEFILES=kline_recv.c kline_send.c uart.c pulls.c kline.c kline_utils.c kline_time_functions.c fillers.c i2c.c i2c_utils.c simon_hd44780_lcd.c configuration_bits.c interrupts.c main.c system.c user.c debug_leds.c timers.c portas.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic16f877.mk dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F877A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/kline_recv.p1: kline_recv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline_recv.p1.d 
	@${RM} ${OBJECTDIR}/kline_recv.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline_recv.p1 kline_recv.c 
	@-${MV} ${OBJECTDIR}/kline_recv.d ${OBJECTDIR}/kline_recv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline_recv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/kline_send.p1: kline_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline_send.p1.d 
	@${RM} ${OBJECTDIR}/kline_send.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline_send.p1 kline_send.c 
	@-${MV} ${OBJECTDIR}/kline_send.d ${OBJECTDIR}/kline_send.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline_send.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uart.p1: uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart.p1.d 
	@${RM} ${OBJECTDIR}/uart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/uart.p1 uart.c 
	@-${MV} ${OBJECTDIR}/uart.d ${OBJECTDIR}/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pulls.p1: pulls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pulls.p1.d 
	@${RM} ${OBJECTDIR}/pulls.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/pulls.p1 pulls.c 
	@-${MV} ${OBJECTDIR}/pulls.d ${OBJECTDIR}/pulls.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pulls.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/kline.p1: kline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline.p1.d 
	@${RM} ${OBJECTDIR}/kline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline.p1 kline.c 
	@-${MV} ${OBJECTDIR}/kline.d ${OBJECTDIR}/kline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/kline_utils.p1: kline_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline_utils.p1.d 
	@${RM} ${OBJECTDIR}/kline_utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline_utils.p1 kline_utils.c 
	@-${MV} ${OBJECTDIR}/kline_utils.d ${OBJECTDIR}/kline_utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline_utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/kline_time_functions.p1: kline_time_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline_time_functions.p1.d 
	@${RM} ${OBJECTDIR}/kline_time_functions.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline_time_functions.p1 kline_time_functions.c 
	@-${MV} ${OBJECTDIR}/kline_time_functions.d ${OBJECTDIR}/kline_time_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline_time_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/fillers.p1: fillers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fillers.p1.d 
	@${RM} ${OBJECTDIR}/fillers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/fillers.p1 fillers.c 
	@-${MV} ${OBJECTDIR}/fillers.d ${OBJECTDIR}/fillers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/fillers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c.p1: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.p1.d 
	@${RM} ${OBJECTDIR}/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/i2c.p1 i2c.c 
	@-${MV} ${OBJECTDIR}/i2c.d ${OBJECTDIR}/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_utils.p1: i2c_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_utils.p1.d 
	@${RM} ${OBJECTDIR}/i2c_utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/i2c_utils.p1 i2c_utils.c 
	@-${MV} ${OBJECTDIR}/i2c_utils.d ${OBJECTDIR}/i2c_utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/simon_hd44780_lcd.p1: simon_hd44780_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/simon_hd44780_lcd.p1.d 
	@${RM} ${OBJECTDIR}/simon_hd44780_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/simon_hd44780_lcd.p1 simon_hd44780_lcd.c 
	@-${MV} ${OBJECTDIR}/simon_hd44780_lcd.d ${OBJECTDIR}/simon_hd44780_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/simon_hd44780_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration_bits.p1: configuration_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/configuration_bits.p1.d 
	@${RM} ${OBJECTDIR}/configuration_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/configuration_bits.p1 configuration_bits.c 
	@-${MV} ${OBJECTDIR}/configuration_bits.d ${OBJECTDIR}/configuration_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	@${RM} ${OBJECTDIR}/interrupts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/interrupts.p1 interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/system.p1 system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/user.p1: user.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.p1.d 
	@${RM} ${OBJECTDIR}/user.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/user.p1 user.c 
	@-${MV} ${OBJECTDIR}/user.d ${OBJECTDIR}/user.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/user.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/debug_leds.p1: debug_leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/debug_leds.p1.d 
	@${RM} ${OBJECTDIR}/debug_leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/debug_leds.p1 debug_leds.c 
	@-${MV} ${OBJECTDIR}/debug_leds.d ${OBJECTDIR}/debug_leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/debug_leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/timers.p1: timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.p1.d 
	@${RM} ${OBJECTDIR}/timers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/timers.p1 timers.c 
	@-${MV} ${OBJECTDIR}/timers.d ${OBJECTDIR}/timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/portas.p1: portas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/portas.p1.d 
	@${RM} ${OBJECTDIR}/portas.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/portas.p1 portas.c 
	@-${MV} ${OBJECTDIR}/portas.d ${OBJECTDIR}/portas.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/portas.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/kline_recv.p1: kline_recv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline_recv.p1.d 
	@${RM} ${OBJECTDIR}/kline_recv.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline_recv.p1 kline_recv.c 
	@-${MV} ${OBJECTDIR}/kline_recv.d ${OBJECTDIR}/kline_recv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline_recv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/kline_send.p1: kline_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline_send.p1.d 
	@${RM} ${OBJECTDIR}/kline_send.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline_send.p1 kline_send.c 
	@-${MV} ${OBJECTDIR}/kline_send.d ${OBJECTDIR}/kline_send.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline_send.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uart.p1: uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart.p1.d 
	@${RM} ${OBJECTDIR}/uart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/uart.p1 uart.c 
	@-${MV} ${OBJECTDIR}/uart.d ${OBJECTDIR}/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pulls.p1: pulls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pulls.p1.d 
	@${RM} ${OBJECTDIR}/pulls.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/pulls.p1 pulls.c 
	@-${MV} ${OBJECTDIR}/pulls.d ${OBJECTDIR}/pulls.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pulls.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/kline.p1: kline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline.p1.d 
	@${RM} ${OBJECTDIR}/kline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline.p1 kline.c 
	@-${MV} ${OBJECTDIR}/kline.d ${OBJECTDIR}/kline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/kline_utils.p1: kline_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline_utils.p1.d 
	@${RM} ${OBJECTDIR}/kline_utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline_utils.p1 kline_utils.c 
	@-${MV} ${OBJECTDIR}/kline_utils.d ${OBJECTDIR}/kline_utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline_utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/kline_time_functions.p1: kline_time_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/kline_time_functions.p1.d 
	@${RM} ${OBJECTDIR}/kline_time_functions.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/kline_time_functions.p1 kline_time_functions.c 
	@-${MV} ${OBJECTDIR}/kline_time_functions.d ${OBJECTDIR}/kline_time_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/kline_time_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/fillers.p1: fillers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fillers.p1.d 
	@${RM} ${OBJECTDIR}/fillers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/fillers.p1 fillers.c 
	@-${MV} ${OBJECTDIR}/fillers.d ${OBJECTDIR}/fillers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/fillers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c.p1: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.p1.d 
	@${RM} ${OBJECTDIR}/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/i2c.p1 i2c.c 
	@-${MV} ${OBJECTDIR}/i2c.d ${OBJECTDIR}/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_utils.p1: i2c_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_utils.p1.d 
	@${RM} ${OBJECTDIR}/i2c_utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/i2c_utils.p1 i2c_utils.c 
	@-${MV} ${OBJECTDIR}/i2c_utils.d ${OBJECTDIR}/i2c_utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/simon_hd44780_lcd.p1: simon_hd44780_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/simon_hd44780_lcd.p1.d 
	@${RM} ${OBJECTDIR}/simon_hd44780_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/simon_hd44780_lcd.p1 simon_hd44780_lcd.c 
	@-${MV} ${OBJECTDIR}/simon_hd44780_lcd.d ${OBJECTDIR}/simon_hd44780_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/simon_hd44780_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration_bits.p1: configuration_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/configuration_bits.p1.d 
	@${RM} ${OBJECTDIR}/configuration_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/configuration_bits.p1 configuration_bits.c 
	@-${MV} ${OBJECTDIR}/configuration_bits.d ${OBJECTDIR}/configuration_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	@${RM} ${OBJECTDIR}/interrupts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/interrupts.p1 interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/system.p1 system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/user.p1: user.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.p1.d 
	@${RM} ${OBJECTDIR}/user.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/user.p1 user.c 
	@-${MV} ${OBJECTDIR}/user.d ${OBJECTDIR}/user.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/user.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/debug_leds.p1: debug_leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/debug_leds.p1.d 
	@${RM} ${OBJECTDIR}/debug_leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/debug_leds.p1 debug_leds.c 
	@-${MV} ${OBJECTDIR}/debug_leds.d ${OBJECTDIR}/debug_leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/debug_leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/timers.p1: timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.p1.d 
	@${RM} ${OBJECTDIR}/timers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/timers.p1 timers.c 
	@-${MV} ${OBJECTDIR}/timers.d ${OBJECTDIR}/timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/portas.p1: portas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/portas.p1.d 
	@${RM} ${OBJECTDIR}/portas.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -DXPRJ_pic16f877=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/portas.p1 portas.c 
	@-${MV} ${OBJECTDIR}/portas.d ${OBJECTDIR}/portas.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/portas.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_pic16f877=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -mrom=default,-1f00-1fff -mram=default,-0-0,-70-70,-80-80,-f0-f0,-100-100,-170-170,-180-180,-1e5-1f0  $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.map  -DXPRJ_pic16f877=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -Og -maddrqual=ignore -v -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,+file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mstackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/lcd16.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic16f877
	${RM} -r dist/pic16f877

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
