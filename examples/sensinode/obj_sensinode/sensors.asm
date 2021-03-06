;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:31 2013
;--------------------------------------------------------
	.module sensors
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _process_poll
	.globl _process_alloc_event
	.globl _process_post
	.globl _strlen
	.globl _strncmp
	.globl _IRCON2_P2IF
	.globl _IRCON2_UTX0IF
	.globl _IRCON2_UTX1IF
	.globl _IRCON2_P1IF
	.globl _IRCON2_WDTIF
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _IRCON_DMAIF
	.globl _IRCON_T1IF
	.globl _IRCON_T2IF
	.globl _IRCON_T3IF
	.globl _IRCON_T4IF
	.globl _IRCON_P0IF
	.globl _IRCON_STIF
	.globl _IEN1_DMAIE
	.globl _IEN1_T1IE
	.globl _IEN1_T2IE
	.globl _IEN1_T3IE
	.globl _IEN1_T4IE
	.globl _IEN1_P0IE
	.globl _IEN0_RFERRIE
	.globl _IEN0_ADCIE
	.globl _IEN0_URX0IE
	.globl _IEN0_URX1IE
	.globl _IEN0_ENCIE
	.globl _IEN0_STIE
	.globl _IEN0_EA
	.globl _EA
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _S0CON_ENCIF_0
	.globl _S0CON_ENCIF_1
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TCON_IT0
	.globl _TCON_RFERRIF
	.globl _TCON_IT1
	.globl _TCON_URX0IF
	.globl _TCON_ADCIF
	.globl _TCON_URX1IF
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1BUF
	.globl _U1CSR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _ADCCFG
	.globl _PERCFG
	.globl _B
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _RFIF
	.globl _IRCON2
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _RFST
	.globl _ACC
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _RFD
	.globl _TIMIF
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _PSW
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _WDCTL
	.globl _T2CON
	.globl _MEMCTR
	.globl _CLKCON
	.globl _U0GCR
	.globl _U0UCR
	.globl _T2CNF
	.globl _U0BAUD
	.globl _U0BUF
	.globl _IRCON
	.globl _SLEEP
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _IP1
	.globl _IEN1
	.globl _RCCTL
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl _FWDATA
	.globl _FCTL
	.globl _FADDRH
	.globl _FADDRL
	.globl _FWT
	.globl _IP0
	.globl _IEN0
	.globl _IE
	.globl _T2THD
	.globl _T2TLD
	.globl _T2CAPHPH
	.globl _T2CAPLPL
	.globl _T2OF2
	.globl _T2OF1
	.globl _T2OF0
	.globl _P2
	.globl _PSBANK
	.globl _FMAP
	.globl _T2PEROF2
	.globl _T2PEROF1
	.globl _T2PEROF0
	.globl _S1CON
	.globl _IEN2
	.globl _HSRC
	.globl _S0CON
	.globl _ST2
	.globl _ST1
	.globl _ST0
	.globl _T2CMP
	.globl __XPAGE
	.globl _DPS
	.globl _RFIM
	.globl _P1
	.globl _P0INP
	.globl _P1IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _TCON
	.globl _PCON
	.globl _U0CSR
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _sensors_process
	.globl _sensors_event
	.globl _ADC_SHADOW
	.globl _U1BUF_SHADOW
	.globl _RFD_SHADOW
	.globl _U0BUF_SHADOW
	.globl _RFSTATUS
	.globl _CHIPID
	.globl _CHVER
	.globl _FSMTC1
	.globl _RXFIFOCNT
	.globl _IOCFG3
	.globl _IOCFG2
	.globl _IOCFG1
	.globl _IOCFG0
	.globl _SHORTADDRL
	.globl _SHORTADDRH
	.globl _PANIDL
	.globl _PANIDH
	.globl _IEEE_ADDR7
	.globl _IEEE_ADDR6
	.globl _IEEE_ADDR5
	.globl _IEEE_ADDR4
	.globl _IEEE_ADDR3
	.globl _IEEE_ADDR2
	.globl _IEEE_ADDR1
	.globl _IEEE_ADDR0
	.globl _DACTSTL
	.globl _DACTSTH
	.globl _ADCTSTL
	.globl _ADCTSTH
	.globl _FSMSTATE
	.globl _AGCCTRLL
	.globl _AGCCTRLH
	.globl _MANORL
	.globl _MANORH
	.globl _MANANDL
	.globl _MANANDH
	.globl _FSMTCL
	.globl _FSMTCH
	.globl _RFPWR
	.globl _CSPT
	.globl _CSPCTRL
	.globl _CSPZ
	.globl _CSPY
	.globl _CSPX
	.globl _FSCTRLL
	.globl _FSCTRLH
	.globl _RXCTRL1L
	.globl _RXCTRL1H
	.globl _RXCTRL0L
	.globl _RXCTRL0H
	.globl _TXCTRLL
	.globl _TXCTRLH
	.globl _SYNCWORDL
	.globl _SYNCWORDH
	.globl _RSSIL
	.globl _RSSIH
	.globl _MDMCTRL1L
	.globl _MDMCTRL1H
	.globl _MDMCTRL0L
	.globl _MDMCTRL0H
	.globl _sensors_first
	.globl _sensors_next
	.globl _sensors_changed
	.globl _sensors_find
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_U0CSR	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P1IEN	=	0x008d
_P0INP	=	0x008f
_P1	=	0x0090
_RFIM	=	0x0091
_DPS	=	0x0092
__XPAGE	=	0x0093
_T2CMP	=	0x0094
_ST0	=	0x0095
_ST1	=	0x0096
_ST2	=	0x0097
_S0CON	=	0x0098
_HSRC	=	0x0099
_IEN2	=	0x009a
_S1CON	=	0x009b
_T2PEROF0	=	0x009c
_T2PEROF1	=	0x009d
_T2PEROF2	=	0x009e
_FMAP	=	0x009f
_PSBANK	=	0x009f
_P2	=	0x00a0
_T2OF0	=	0x00a1
_T2OF1	=	0x00a2
_T2OF2	=	0x00a3
_T2CAPLPL	=	0x00a4
_T2CAPHPH	=	0x00a5
_T2TLD	=	0x00a6
_T2THD	=	0x00a7
_IE	=	0x00a8
_IEN0	=	0x00a8
_IP0	=	0x00a9
_FWT	=	0x00ab
_FADDRL	=	0x00ac
_FADDRH	=	0x00ad
_FCTL	=	0x00ae
_FWDATA	=	0x00af
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
_RCCTL	=	0x00b7
_IEN1	=	0x00b8
_IP1	=	0x00b9
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_SLEEP	=	0x00be
_IRCON	=	0x00c0
_U0BUF	=	0x00c1
_U0BAUD	=	0x00c2
_T2CNF	=	0x00c3
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_CLKCON	=	0x00c6
_MEMCTR	=	0x00c7
_T2CON	=	0x00c8
_WDCTL	=	0x00c9
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_PSW	=	0x00d0
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_TIMIF	=	0x00d8
_RFD	=	0x00d9
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_ACC	=	0x00e0
_RFST	=	0x00e1
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_IRCON2	=	0x00e8
_RFIF	=	0x00e9
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_B	=	0x00f0
_PERCFG	=	0x00f1
_ADCCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_U1CSR	=	0x00f8
_U1BUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_7	=	0x0087
_P0_6	=	0x0086
_P0_5	=	0x0085
_P0_4	=	0x0084
_P0_3	=	0x0083
_P0_2	=	0x0082
_P0_1	=	0x0081
_P0_0	=	0x0080
_TCON_URX1IF	=	0x008f
_TCON_ADCIF	=	0x008d
_TCON_URX0IF	=	0x008b
_TCON_IT1	=	0x008a
_TCON_RFERRIF	=	0x0089
_TCON_IT0	=	0x0088
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_S0CON_ENCIF_1	=	0x0099
_S0CON_ENCIF_0	=	0x0098
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_EA	=	0x00af
_IEN0_EA	=	0x00af
_IEN0_STIE	=	0x00ad
_IEN0_ENCIE	=	0x00ac
_IEN0_URX1IE	=	0x00ab
_IEN0_URX0IE	=	0x00aa
_IEN0_ADCIE	=	0x00a9
_IEN0_RFERRIE	=	0x00a8
_IEN1_P0IE	=	0x00bd
_IEN1_T4IE	=	0x00bc
_IEN1_T3IE	=	0x00bb
_IEN1_T2IE	=	0x00ba
_IEN1_T1IE	=	0x00b9
_IEN1_DMAIE	=	0x00b8
_IRCON_STIF	=	0x00c7
_IRCON_P0IF	=	0x00c5
_IRCON_T4IF	=	0x00c4
_IRCON_T3IF	=	0x00c3
_IRCON_T2IF	=	0x00c2
_IRCON_T1IF	=	0x00c1
_IRCON_DMAIF	=	0x00c0
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_IRCON2_WDTIF	=	0x00ec
_IRCON2_P1IF	=	0x00eb
_IRCON2_UTX1IF	=	0x00ea
_IRCON2_UTX0IF	=	0x00e9
_IRCON2_P2IF	=	0x00e8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_MDMCTRL0H	=	0xdf02
_MDMCTRL0L	=	0xdf03
_MDMCTRL1H	=	0xdf04
_MDMCTRL1L	=	0xdf05
_RSSIH	=	0xdf06
_RSSIL	=	0xdf07
_SYNCWORDH	=	0xdf08
_SYNCWORDL	=	0xdf09
_TXCTRLH	=	0xdf0a
_TXCTRLL	=	0xdf0b
_RXCTRL0H	=	0xdf0c
_RXCTRL0L	=	0xdf0d
_RXCTRL1H	=	0xdf0e
_RXCTRL1L	=	0xdf0f
_FSCTRLH	=	0xdf10
_FSCTRLL	=	0xdf11
_CSPX	=	0xdf12
_CSPY	=	0xdf13
_CSPZ	=	0xdf14
_CSPCTRL	=	0xdf15
_CSPT	=	0xdf16
_RFPWR	=	0xdf17
_FSMTCH	=	0xdf20
_FSMTCL	=	0xdf21
_MANANDH	=	0xdf22
_MANANDL	=	0xdf23
_MANORH	=	0xdf24
_MANORL	=	0xdf25
_AGCCTRLH	=	0xdf26
_AGCCTRLL	=	0xdf27
_FSMSTATE	=	0xdf39
_ADCTSTH	=	0xdf3a
_ADCTSTL	=	0xdf3b
_DACTSTH	=	0xdf3c
_DACTSTL	=	0xdf3d
_IEEE_ADDR0	=	0xdf43
_IEEE_ADDR1	=	0xdf44
_IEEE_ADDR2	=	0xdf45
_IEEE_ADDR3	=	0xdf46
_IEEE_ADDR4	=	0xdf47
_IEEE_ADDR5	=	0xdf48
_IEEE_ADDR6	=	0xdf49
_IEEE_ADDR7	=	0xdf4a
_PANIDH	=	0xdf4b
_PANIDL	=	0xdf4c
_SHORTADDRH	=	0xdf4d
_SHORTADDRL	=	0xdf4e
_IOCFG0	=	0xdf4f
_IOCFG1	=	0xdf50
_IOCFG2	=	0xdf51
_IOCFG3	=	0xdf52
_RXFIFOCNT	=	0xdf53
_FSMTC1	=	0xdf54
_CHVER	=	0xdf60
_CHIPID	=	0xdf61
_RFSTATUS	=	0xdf62
_U0BUF_SHADOW	=	0xdfc1
_RFD_SHADOW	=	0xdfd9
_U1BUF_SHADOW	=	0xdff9
_ADC_SHADOW	=	0xdfba
_sensors_event::
	.ds 1
_num_sensors:
	.ds 1
_process_thread_sensors_process_i_1_1:
	.ds 2
_process_thread_sensors_process_events_1_1:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_sensors_process::
	.ds 9
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'get_sensor_index'
;------------------------------------------------------------
;s                         Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/lib/sensors.c:55: get_sensor_index(const struct sensors_sensor *s)
;	-----------------------------------------
;	 function get_sensor_index
;	-----------------------------------------
_get_sensor_index:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../core/lib/sensors.c:58: for(i = 0; i < num_sensors; ++i) {
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r5,#0x00
	mov	r6,#0x00
00103$:
	push	ar3
	push	ar4
	mov	dptr,#_num_sensors
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	pop	ar4
	pop	ar3
	jnc	00106$
;	../../core/lib/sensors.c:59: if(sensors[i] == s) {
	push	ar3
	push	ar4
	mov	a,r5
	add	a,#_sensors
	mov	dpl,a
	mov	a,r6
	addc	a,#(_sensors >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	push	ar3
	push	ar4
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00117$
	pop	ar4
	pop	ar3
	sjmp	00105$
00117$:
	pop	ar4
	pop	ar3
;	../../core/lib/sensors.c:60: return i;
	mov	dpl,r3
	mov	dph,r4
	sjmp	00107$
00105$:
;	../../core/lib/sensors.c:58: for(i = 0; i < num_sensors; ++i) {
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00118$
	inc	r0
	inc	@r0
00118$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	ljmp	00103$
00106$:
;	../../core/lib/sensors.c:63: return i;
	mov	dpl,r3
	mov	dph,r4
00107$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sensors_first'
;------------------------------------------------------------
;	../../core/lib/sensors.c:67: sensors_first(void)
;	-----------------------------------------
;	 function sensors_first
;	-----------------------------------------
_sensors_first:
;	../../core/lib/sensors.c:69: return sensors[0];
	mov	dptr,#_sensors
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sensors_next'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/lib/sensors.c:73: sensors_next(const struct sensors_sensor *s)
;	-----------------------------------------
;	 function sensors_next
;	-----------------------------------------
_sensors_next:
;	../../core/lib/sensors.c:75: return sensors[get_sensor_index(s) + 1];
	lcall	_get_sensor_index
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
	push	ar6
	push	ar7
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	add	a,#_sensors
	mov	dpl,a
	mov	a,r7
	addc	a,#(_sensors >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sensors_changed'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;__00010001                Allocated to registers 
;------------------------------------------------------------
;	../../core/lib/sensors.c:79: sensors_changed(const struct sensors_sensor *s)
;	-----------------------------------------
;	 function sensors_changed
;	-----------------------------------------
_sensors_changed:
;	../../core/lib/sensors.c:81: sensors_flags[get_sensor_index(s)] |= FLAG_CHANGED;
	lcall	_get_sensor_index
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_sensors_flags
	mov	r6,a
	mov	a,r7
	addc	a,#(_sensors_flags >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	orl	ar5,#0x80
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	../../core/lib/sensors.c:82: process_poll(&sensors_process);
	mov	dptr,#_sensors_process
	mov	b,#0x00
	ljmp	_process_poll
;------------------------------------------------------------
;Allocation info for local variables in function 'sensors_find'
;------------------------------------------------------------
;prefix                    Allocated to stack - _bp +1
;i                         Allocated to registers r2 r4 
;len                       Allocated to stack - _bp +4
;sloc0                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	../../core/lib/sensors.c:86: sensors_find(const char *prefix)
;	-----------------------------------------
;	 function sensors_find
;	-----------------------------------------
_sensors_find:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../core/lib/sensors.c:93: len = strlen(prefix);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_strlen
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	../../core/lib/sensors.c:95: for(i = 0; i < num_sensors; ++i) {
	mov	r2,#0x00
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r7,#0x00
00103$:
	mov	dptr,#_num_sensors
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r4
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00115$
	ljmp	00106$
00115$:
;	../../core/lib/sensors.c:96: if(strncmp(prefix, sensors[i]->type, len) == 0) {
	push	ar2
	push	ar4
	mov	a,r3
	add	a,#_sensors
	mov	dpl,a
	mov	a,r7
	addc	a,#(_sensors >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_strncmp
	mov	r5,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	pop	ar4
	pop	ar2
	mov	a,r5
	orl	a,r6
	jnz	00105$
;	../../core/lib/sensors.c:97: return sensors[i];
	mov	a,r3
	add	a,#_sensors
	mov	dpl,a
	mov	a,r7
	addc	a,#(_sensors >> 8)
	mov	dph,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00107$
00105$:
;	../../core/lib/sensors.c:95: for(i = 0; i < num_sensors; ++i) {
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00117$
	inc	r4
00117$:
	ljmp	00103$
00106$:
;	../../core/lib/sensors.c:100: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_sensors_process'
;------------------------------------------------------------
;ev                        Allocated to stack - _bp -3
;data                      Allocated to stack - _bp -6
;process_pt                Allocated to registers r5 r6 r7 
;PT_YIELD_FLAG             Allocated to registers r4 
;sloc0                     Allocated to stack - _bp +1
;i                         Allocated with name '_process_thread_sensors_process_i_1_1'
;events                    Allocated with name '_process_thread_sensors_process_events_1_1'
;------------------------------------------------------------
;	../../core/lib/sensors.c:103: PROCESS_THREAD(sensors_process, ev, data)
;	-----------------------------------------
;	 function process_thread_sensors_process
;	-----------------------------------------
_process_thread_sensors_process:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	../../core/lib/sensors.c:108: PROCESS_BEGIN();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r4,#0x01
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00164$
	cjne	r3,#0x00,00164$
	sjmp	00101$
00164$:
	cjne	r2,#0x78,00165$
	cjne	r3,#0x00,00165$
	ljmp	00102$
00165$:
	cjne	r2,#0x7F,00166$
	cjne	r3,#0x00,00166$
	ljmp	00108$
00166$:
	ljmp	00125$
00101$:
;	../../core/lib/sensors.c:110: sensors_event = process_alloc_event();
	push	ar7
	push	ar6
	push	ar5
	lcall	_process_alloc_event
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_sensors_event
	movx	@dptr,a
;	../../core/lib/sensors.c:112: for(i = 0; sensors[i] != NULL; ++i) {
	mov	dptr,#_process_thread_sensors_process_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00126$:
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_process_thread_sensors_process_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar5
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar5
	mov	a,r6
	add	a,#_sensors
	mov	dpl,a
	mov	a,r7
	addc	a,#(_sensors >> 8)
	mov	dph,a
	mov	r0,_bp
	inc	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	clr	a
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00167$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00129$
00167$:
;	../../core/lib/sensors.c:113: sensors_flags[i] = 0;
	mov	a,r2
	add	a,#_sensors_flags
	mov	dpl,a
	mov	a,r3
	addc	a,#(_sensors_flags >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../core/lib/sensors.c:114: sensors[i]->configure(SENSORS_HW_INIT, 0);
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	a,#00168$
	push	acc
	mov	a,#(00168$ >> 8)
	push	acc
	push	ar5
	push	ar6
	mov	dptr,#0x0080
	ret
00168$:
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/lib/sensors.c:112: for(i = 0; sensors[i] != NULL; ++i) {
	mov	dptr,#_process_thread_sensors_process_i_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00126$
00129$:
;	../../core/lib/sensors.c:116: num_sensors = i;
	mov	dptr,#_num_sensors
	mov	a,r2
	movx	@dptr,a
;	../../core/lib/sensors.c:118: while(1) {
00123$:
;	../../core/lib/sensors.c:120: PROCESS_WAIT_EVENT();
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x78
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	a,r4
	jnz	00119$
	mov	dpl,#0x01
	ljmp	00134$
;	../../core/lib/sensors.c:122: do {
00119$:
;	../../core/lib/sensors.c:123: events = 0;
	mov	dptr,#_process_thread_sensors_process_events_1_1
;	../../core/lib/sensors.c:124: for(i = 0; i < num_sensors; ++i) {
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_thread_sensors_process_i_1_1
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00130$:
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_process_thread_sensors_process_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_num_sensors
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	clr	c
	mov	a,r2
	subb	a,r7
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00170$
	ljmp	00120$
00170$:
;	../../core/lib/sensors.c:125: if(sensors_flags[i] & FLAG_CHANGED) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,r2
	add	a,#_sensors_flags
	mov	dpl,a
	mov	a,r3
	addc	a,#(_sensors_flags >> 8)
	mov	dph,a
	movx	a,@dptr
	pop	ar7
	pop	ar6
	pop	ar5
	jb	acc.7,00171$
	ljmp	00132$
00171$:
;	../../core/lib/sensors.c:126: if(process_post(PROCESS_BROADCAST, sensors_event, (void *)sensors[i]) == PROCESS_ERR_OK) {
	push	ar5
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_sensors
	mov	dpl,a
	mov	a,r3
	addc	a,#(_sensors >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar2
	push	ar3
	push	ar7
	mov	dptr,#_sensors_event
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_process_post
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
;	../../core/lib/sensors.c:127: PROCESS_WAIT_EVENT_UNTIL(ev == sensors_event);
	jnz	00116$
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x7F
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00108$:
	mov	a,r4
	jz	00109$
	mov	dptr,#_sensors_event
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00174$
	sjmp	00116$
00174$:
00109$:
	mov	dpl,#0x01
	sjmp	00134$
00116$:
;	../../core/lib/sensors.c:129: sensors_flags[i] &= ~FLAG_CHANGED;
	mov	dptr,#_process_thread_sensors_process_i_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,#_sensors_flags
	mov	r3,a
	mov	a,r4
	addc	a,#(_sensors_flags >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0x7F
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
;	../../core/lib/sensors.c:130: events++;
	mov	dptr,#_process_thread_sensors_process_events_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00132$:
;	../../core/lib/sensors.c:124: for(i = 0; i < num_sensors; ++i) {
	mov	dptr,#_process_thread_sensors_process_i_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00130$
00120$:
;	../../core/lib/sensors.c:133: } while(events);
	mov	dptr,#_process_thread_sensors_process_events_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00175$
	ljmp	00119$
00175$:
	ljmp	00123$
;	../../core/lib/sensors.c:136: PROCESS_END();
00125$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x03
00134$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__sensors_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_sensors_process,(_process_thread_sensors_process >> 8)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
