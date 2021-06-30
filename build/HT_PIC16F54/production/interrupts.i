# 1 "interrupts.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "interrupts.c" 2





# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 1 3
# 18 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "/opt/microchip/xc8/v2.20/pic/include/c90/xc8debug.h" 1 3
# 13 "/opt/microchip/xc8/v2.20/pic/include/c90/xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 2 3



# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 1 3




# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/htc.h" 1 3



# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 1 3
# 5 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/htc.h" 2 3
# 6 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 2 3







# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic_chip_select.h" 1 3
# 673 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic_chip_select.h" 3
# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 1 3
# 44 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/__at.h" 1 3
# 45 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 2 3







extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");




extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");




extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");




extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 159 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");




extern volatile unsigned char PORTA __attribute__((address(0x005)));

__asm("PORTA equ 05h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x005)));
# 228 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x006)));

__asm("PORTB equ 06h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x006)));
# 290 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :5;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 310 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INT0IF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INT0IE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :1;
        unsigned INTF :1;
        unsigned :2;
        unsigned INTE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 388 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
# 444 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x00D)));

__asm("PIR2 equ 0Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned EEIF :1;
        unsigned :1;
        unsigned CMIF :1;
        unsigned OSFIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x00D)));
# 478 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00E)));

__asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __attribute__((address(0x00E)));

__asm("TMR1L equ 0Eh");




extern volatile unsigned char TMR1H __attribute__((address(0x00F)));

__asm("TMR1H equ 0Fh");




extern volatile unsigned char T1CON __attribute__((address(0x010)));

__asm("T1CON equ 010h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
        unsigned T1RUN :1;
    };
    struct {
        unsigned :2;
        unsigned T1INSYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x010)));
# 571 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x011)));

__asm("TMR2 equ 011h");




extern volatile unsigned char T2CON __attribute__((address(0x012)));

__asm("T2CON equ 012h");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned TOUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned TOUTPS0 :1;
        unsigned TOUTPS1 :1;
        unsigned TOUTPS2 :1;
        unsigned TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x012)));
# 649 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char SSPBUF __attribute__((address(0x013)));

__asm("SSPBUF equ 013h");




extern volatile unsigned char SSPCON __attribute__((address(0x014)));

__asm("SSPCON equ 014h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x014)));
# 726 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x015)));

__asm("CCPR1 equ 015h");




extern volatile unsigned char CCPR1L __attribute__((address(0x015)));

__asm("CCPR1L equ 015h");




extern volatile unsigned char CCPR1H __attribute__((address(0x016)));

__asm("CCPR1H equ 016h");




extern volatile unsigned char CCP1CON __attribute__((address(0x017)));

__asm("CCP1CON equ 017h");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x017)));
# 805 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0x018)));

__asm("RCSTA equ 018h");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :5;
        unsigned RC9 :1;
    };
    struct {
        unsigned :6;
        unsigned nRC8 :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x018)));
# 900 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char TXREG __attribute__((address(0x019)));

__asm("TXREG equ 019h");




extern volatile unsigned char RCREG __attribute__((address(0x01A)));

__asm("RCREG equ 01Ah");




extern volatile unsigned char ADRESH __attribute__((address(0x01E)));

__asm("ADRESH equ 01Eh");




extern volatile unsigned char ADCON0 __attribute__((address(0x01F)));

__asm("ADCON0 equ 01Fh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned :1;
        unsigned GO_nDONE :1;
        unsigned CHS :3;
        unsigned ADCS :2;
    };
    struct {
        unsigned :2;
        unsigned GO :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nDONE :1;
    };
    struct {
        unsigned :2;
        unsigned GO_DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01F)));
# 1017 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 1087 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x085)));

__asm("TRISA equ 085h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x085)));
# 1149 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x086)));

__asm("TRISB equ 086h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x086)));
# 1211 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
# 1267 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x08D)));

__asm("PIE2 equ 08Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned EEIE :1;
        unsigned :1;
        unsigned CMIE :1;
        unsigned OSFIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x08D)));
# 1301 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char PCON __attribute__((address(0x08E)));

__asm("PCON equ 08Eh");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
    struct {
        unsigned nBO :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x08E)));
# 1335 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0x08F)));

__asm("OSCCON equ 08Fh");


typedef union {
    struct {
        unsigned SCS :2;
        unsigned IOFS :1;
        unsigned OSTS :1;
        unsigned IRCF :3;
    };
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned :2;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0x08F)));
# 1406 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x090)));

__asm("OSCTUNE equ 090h");


typedef union {
    struct {
        unsigned TUN :6;
    };
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
        unsigned TUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x090)));
# 1464 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x092)));

__asm("PR2 equ 092h");




extern volatile unsigned char SSPADD __attribute__((address(0x093)));

__asm("SSPADD equ 093h");




extern volatile unsigned char SSPSTAT __attribute__((address(0x094)));

__asm("SSPSTAT equ 094h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned :2;
        unsigned D :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DATA :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x094)));
# 1647 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0x098)));

__asm("TXSTA equ 098h");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned nTX8 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x098)));
# 1728 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char SPBRG __attribute__((address(0x099)));

__asm("SPBRG equ 099h");




extern volatile unsigned char ANSEL __attribute__((address(0x09B)));

__asm("ANSEL equ 09Bh");


typedef union {
    struct {
        unsigned ANS0 :1;
        unsigned ANS1 :1;
        unsigned ANS2 :1;
        unsigned ANS3 :1;
        unsigned ANS4 :1;
        unsigned ANS5 :1;
        unsigned ANS6 :1;
    };
} ANSELbits_t;
extern volatile ANSELbits_t ANSELbits __attribute__((address(0x09B)));
# 1791 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char CMCON __attribute__((address(0x09C)));

__asm("CMCON equ 09Ch");


typedef union {
    struct {
        unsigned CM :3;
        unsigned CIS :1;
        unsigned C1INV :1;
        unsigned C2INV :1;
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
    struct {
        unsigned CM0 :1;
        unsigned CM1 :1;
        unsigned CM2 :1;
    };
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __attribute__((address(0x09C)));
# 1861 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char CVRCON __attribute__((address(0x09D)));

__asm("CVRCON equ 09Dh");


typedef union {
    struct {
        unsigned CVR :4;
        unsigned :1;
        unsigned CVRR :1;
        unsigned CVROE :1;
        unsigned CVREN :1;
    };
    struct {
        unsigned CVR0 :1;
        unsigned CVR1 :1;
        unsigned CVR2 :1;
        unsigned CVR3 :1;
    };
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __attribute__((address(0x09D)));
# 1926 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char ADRESL __attribute__((address(0x09E)));

__asm("ADRESL equ 09Eh");




extern volatile unsigned char ADCON1 __attribute__((address(0x09F)));

__asm("ADCON1 equ 09Fh");


typedef union {
    struct {
        unsigned :4;
        unsigned VCFG :2;
        unsigned ADCS2 :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned :4;
        unsigned VCFG0 :1;
        unsigned VCFG1 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09F)));
# 1981 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0x105)));

__asm("WDTCON equ 0105h");


typedef union {
    struct {
        unsigned SWDTEN :1;
        unsigned WDTPS :4;
    };
    struct {
        unsigned SWDTE :1;
        unsigned WDTPS0 :1;
        unsigned WDTPS1 :1;
        unsigned WDTPS2 :1;
        unsigned WDTPS3 :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0x105)));
# 2039 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char EEDATA __attribute__((address(0x10C)));

__asm("EEDATA equ 010Ch");




extern volatile unsigned char EEADR __attribute__((address(0x10D)));

__asm("EEADR equ 010Dh");




extern volatile unsigned char EEDATH __attribute__((address(0x10E)));

__asm("EEDATH equ 010Eh");




extern volatile unsigned char EEADRH __attribute__((address(0x10F)));

__asm("EEADRH equ 010Fh");




extern volatile unsigned char EECON1 __attribute__((address(0x18C)));

__asm("EECON1 equ 018Ch");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned :2;
        unsigned EEPGD :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0x18C)));
# 2118 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0x18D)));

__asm("EECON2 equ 018Dh");
# 2131 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f88.h" 3
extern volatile __bit ADCS0 __attribute__((address(0xFE)));


extern volatile __bit ADCS1 __attribute__((address(0xFF)));


extern volatile __bit ADCS2 __attribute__((address(0x4FE)));


extern volatile __bit ADDEN __attribute__((address(0xC3)));


extern volatile __bit ADFM __attribute__((address(0x4FF)));


extern volatile __bit ADIE __attribute__((address(0x466)));


extern volatile __bit ADIF __attribute__((address(0x66)));


extern volatile __bit ADON __attribute__((address(0xF8)));


extern volatile __bit ANS0 __attribute__((address(0x4D8)));


extern volatile __bit ANS1 __attribute__((address(0x4D9)));


extern volatile __bit ANS2 __attribute__((address(0x4DA)));


extern volatile __bit ANS3 __attribute__((address(0x4DB)));


extern volatile __bit ANS4 __attribute__((address(0x4DC)));


extern volatile __bit ANS5 __attribute__((address(0x4DD)));


extern volatile __bit ANS6 __attribute__((address(0x4DE)));


extern volatile __bit BF __attribute__((address(0x4A0)));


extern volatile __bit BRGH __attribute__((address(0x4C2)));


extern volatile __bit C1INV __attribute__((address(0x4E4)));


extern volatile __bit C1OUT __attribute__((address(0x4E6)));


extern volatile __bit C2INV __attribute__((address(0x4E5)));


extern volatile __bit C2OUT __attribute__((address(0x4E7)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1IE __attribute__((address(0x462)));


extern volatile __bit CCP1IF __attribute__((address(0x62)));


extern volatile __bit CCP1M0 __attribute__((address(0xB8)));


extern volatile __bit CCP1M1 __attribute__((address(0xB9)));


extern volatile __bit CCP1M2 __attribute__((address(0xBA)));


extern volatile __bit CCP1M3 __attribute__((address(0xBB)));


extern volatile __bit CCP1X __attribute__((address(0xBD)));


extern volatile __bit CCP1Y __attribute__((address(0xBC)));


extern volatile __bit CHS0 __attribute__((address(0xFB)));


extern volatile __bit CHS1 __attribute__((address(0xFC)));


extern volatile __bit CHS2 __attribute__((address(0xFD)));


extern volatile __bit CIS __attribute__((address(0x4E3)));


extern volatile __bit CKE __attribute__((address(0x4A6)));


extern volatile __bit CKP __attribute__((address(0xA4)));


extern volatile __bit CM0 __attribute__((address(0x4E0)));


extern volatile __bit CM1 __attribute__((address(0x4E1)));


extern volatile __bit CM2 __attribute__((address(0x4E2)));


extern volatile __bit CMIE __attribute__((address(0x46E)));


extern volatile __bit CMIF __attribute__((address(0x6E)));


extern volatile __bit CREN __attribute__((address(0xC4)));


extern volatile __bit CSRC __attribute__((address(0x4C7)));


extern volatile __bit CVR0 __attribute__((address(0x4E8)));


extern volatile __bit CVR1 __attribute__((address(0x4E9)));


extern volatile __bit CVR2 __attribute__((address(0x4EA)));


extern volatile __bit CVR3 __attribute__((address(0x4EB)));


extern volatile __bit CVREN __attribute__((address(0x4EF)));


extern volatile __bit CVROE __attribute__((address(0x4EE)));


extern volatile __bit CVRR __attribute__((address(0x4ED)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x4A5)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit D_A __attribute__((address(0x4A5)));


extern volatile __bit D_nA __attribute__((address(0x4A5)));


extern volatile __bit EEIE __attribute__((address(0x46C)));


extern volatile __bit EEIF __attribute__((address(0x6C)));


extern volatile __bit EEPGD __attribute__((address(0xC67)));


extern volatile __bit FERR __attribute__((address(0xC2)));


extern volatile __bit FREE __attribute__((address(0xC64)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0xFA)));


extern volatile __bit GO_DONE __attribute__((address(0xFA)));


extern volatile __bit GO_nDONE __attribute__((address(0xFA)));


extern volatile __bit I2C_DATA __attribute__((address(0x4A5)));


extern volatile __bit I2C_READ __attribute__((address(0x4A2)));


extern volatile __bit I2C_START __attribute__((address(0x4A3)));


extern volatile __bit I2C_STOP __attribute__((address(0x4A4)));


extern volatile __bit INT0IE __attribute__((address(0x5C)));


extern volatile __bit INT0IF __attribute__((address(0x59)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOFS __attribute__((address(0x47A)));


extern volatile __bit IRCF0 __attribute__((address(0x47C)));


extern volatile __bit IRCF1 __attribute__((address(0x47D)));


extern volatile __bit IRCF2 __attribute__((address(0x47E)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit OERR __attribute__((address(0xC1)));


extern volatile __bit OSFIE __attribute__((address(0x46F)));


extern volatile __bit OSFIF __attribute__((address(0x6F)));


extern volatile __bit OSTS __attribute__((address(0x47B)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit RA0 __attribute__((address(0x28)));


extern volatile __bit RA1 __attribute__((address(0x29)));


extern volatile __bit RA2 __attribute__((address(0x2A)));


extern volatile __bit RA3 __attribute__((address(0x2B)));


extern volatile __bit RA4 __attribute__((address(0x2C)));


extern volatile __bit RA5 __attribute__((address(0x2D)));


extern volatile __bit RA6 __attribute__((address(0x2E)));


extern volatile __bit RA7 __attribute__((address(0x2F)));


extern volatile __bit RB0 __attribute__((address(0x30)));


extern volatile __bit RB1 __attribute__((address(0x31)));


extern volatile __bit RB2 __attribute__((address(0x32)));


extern volatile __bit RB3 __attribute__((address(0x33)));


extern volatile __bit RB4 __attribute__((address(0x34)));


extern volatile __bit RB5 __attribute__((address(0x35)));


extern volatile __bit RB6 __attribute__((address(0x36)));


extern volatile __bit RB7 __attribute__((address(0x37)));


extern volatile __bit RBIE __attribute__((address(0x5B)));


extern volatile __bit RBIF __attribute__((address(0x58)));


extern volatile __bit RC8_9 __attribute__((address(0xC6)));


extern volatile __bit RC9 __attribute__((address(0xC6)));


extern volatile __bit RCD8 __attribute__((address(0xC0)));


extern volatile __bit RCIE __attribute__((address(0x465)));


extern volatile __bit RCIF __attribute__((address(0x65)));


extern volatile __bit RD __attribute__((address(0xC60)));


extern volatile __bit READ_WRITE __attribute__((address(0x4A2)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit RX9 __attribute__((address(0xC6)));


extern volatile __bit RX9D __attribute__((address(0xC0)));


extern volatile __bit R_W __attribute__((address(0x4A2)));


extern volatile __bit R_nW __attribute__((address(0x4A2)));


extern volatile __bit SCS0 __attribute__((address(0x478)));


extern volatile __bit SCS1 __attribute__((address(0x479)));


extern volatile __bit SMP __attribute__((address(0x4A7)));


extern volatile __bit SPEN __attribute__((address(0xC7)));


extern volatile __bit SREN __attribute__((address(0xC5)));


extern volatile __bit SSPEN __attribute__((address(0xA5)));


extern volatile __bit SSPIE __attribute__((address(0x463)));


extern volatile __bit SSPIF __attribute__((address(0x63)));


extern volatile __bit SSPM0 __attribute__((address(0xA0)));


extern volatile __bit SSPM1 __attribute__((address(0xA1)));


extern volatile __bit SSPM2 __attribute__((address(0xA2)));


extern volatile __bit SSPM3 __attribute__((address(0xA3)));


extern volatile __bit SSPOV __attribute__((address(0xA6)));


extern volatile __bit SWDTE __attribute__((address(0x828)));


extern volatile __bit SWDTEN __attribute__((address(0x828)));


extern volatile __bit SYNC __attribute__((address(0x4C4)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKPS0 __attribute__((address(0x84)));


extern volatile __bit T1CKPS1 __attribute__((address(0x85)));


extern volatile __bit T1INSYNC __attribute__((address(0x82)));


extern volatile __bit T1OSCEN __attribute__((address(0x83)));


extern volatile __bit T1RUN __attribute__((address(0x86)));


extern volatile __bit T2CKPS0 __attribute__((address(0x90)));


extern volatile __bit T2CKPS1 __attribute__((address(0x91)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR1CS __attribute__((address(0x81)));


extern volatile __bit TMR1IE __attribute__((address(0x460)));


extern volatile __bit TMR1IF __attribute__((address(0x60)));


extern volatile __bit TMR1ON __attribute__((address(0x80)));


extern volatile __bit TMR2IE __attribute__((address(0x461)));


extern volatile __bit TMR2IF __attribute__((address(0x61)));


extern volatile __bit TMR2ON __attribute__((address(0x92)));


extern volatile __bit TOUTPS0 __attribute__((address(0x93)));


extern volatile __bit TOUTPS1 __attribute__((address(0x94)));


extern volatile __bit TOUTPS2 __attribute__((address(0x95)));


extern volatile __bit TOUTPS3 __attribute__((address(0x96)));


extern volatile __bit TRISA0 __attribute__((address(0x428)));


extern volatile __bit TRISA1 __attribute__((address(0x429)));


extern volatile __bit TRISA2 __attribute__((address(0x42A)));


extern volatile __bit TRISA3 __attribute__((address(0x42B)));


extern volatile __bit TRISA4 __attribute__((address(0x42C)));


extern volatile __bit TRISA5 __attribute__((address(0x42D)));


extern volatile __bit TRISA6 __attribute__((address(0x42E)));


extern volatile __bit TRISA7 __attribute__((address(0x42F)));


extern volatile __bit TRISB0 __attribute__((address(0x430)));


extern volatile __bit TRISB1 __attribute__((address(0x431)));


extern volatile __bit TRISB2 __attribute__((address(0x432)));


extern volatile __bit TRISB3 __attribute__((address(0x433)));


extern volatile __bit TRISB4 __attribute__((address(0x434)));


extern volatile __bit TRISB5 __attribute__((address(0x435)));


extern volatile __bit TRISB6 __attribute__((address(0x436)));


extern volatile __bit TRISB7 __attribute__((address(0x437)));


extern volatile __bit TRMT __attribute__((address(0x4C1)));


extern volatile __bit TUN0 __attribute__((address(0x480)));


extern volatile __bit TUN1 __attribute__((address(0x481)));


extern volatile __bit TUN2 __attribute__((address(0x482)));


extern volatile __bit TUN3 __attribute__((address(0x483)));


extern volatile __bit TUN4 __attribute__((address(0x484)));


extern volatile __bit TUN5 __attribute__((address(0x485)));


extern volatile __bit TX8_9 __attribute__((address(0x4C6)));


extern volatile __bit TX9 __attribute__((address(0x4C6)));


extern volatile __bit TX9D __attribute__((address(0x4C0)));


extern volatile __bit TXD8 __attribute__((address(0x4C0)));


extern volatile __bit TXEN __attribute__((address(0x4C5)));


extern volatile __bit TXIE __attribute__((address(0x464)));


extern volatile __bit TXIF __attribute__((address(0x64)));


extern volatile __bit UA __attribute__((address(0x4A1)));


extern volatile __bit VCFG0 __attribute__((address(0x4FC)));


extern volatile __bit VCFG1 __attribute__((address(0x4FD)));


extern volatile __bit WCOL __attribute__((address(0xA7)));


extern volatile __bit WDTPS0 __attribute__((address(0x829)));


extern volatile __bit WDTPS1 __attribute__((address(0x82A)));


extern volatile __bit WDTPS2 __attribute__((address(0x82B)));


extern volatile __bit WDTPS3 __attribute__((address(0x82C)));


extern volatile __bit WR __attribute__((address(0xC61)));


extern volatile __bit WREN __attribute__((address(0xC62)));


extern volatile __bit WRERR __attribute__((address(0xC63)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nA __attribute__((address(0x4A5)));


extern volatile __bit nADDRESS __attribute__((address(0x4A5)));


extern volatile __bit nBO __attribute__((address(0x470)));


extern volatile __bit nBOR __attribute__((address(0x470)));


extern volatile __bit nDONE __attribute__((address(0xFA)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x471)));


extern volatile __bit nRBPU __attribute__((address(0x40F)));


extern volatile __bit nRC8 __attribute__((address(0xC6)));


extern volatile __bit nT1SYNC __attribute__((address(0x82)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nTX8 __attribute__((address(0x4C6)));


extern volatile __bit nW __attribute__((address(0x4A2)));


extern volatile __bit nWRITE __attribute__((address(0x4A2)));
# 674 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic_chip_select.h" 2 3
# 14 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 2 3
# 30 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/eeprom_routines.h" 1 3
# 114 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 86 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 2 3





#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
# 137 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 2 3
# 7 "interrupts.c" 2




# 1 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 1 3
# 13 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef __int24 int_least24_t;
# 118 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef signed long int int_least32_t;
# 136 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef int32_t intmax_t;
# 282 "/opt/microchip/xc8/v2.20/pic/include/c90/stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 12 "interrupts.c" 2
# 1 "/opt/microchip/xc8/v2.20/pic/include/c90/stdbool.h" 1 3
# 13 "interrupts.c" 2
# 23 "interrupts.c"
void interrupt isr(void)
{
# 50 "interrupts.c"
}
