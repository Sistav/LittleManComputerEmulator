// Created by Georgios Dialynas-Vatsis
        INP
        STA OGO
        STA MODO
        INP
        STA OGT
        STA MODT
        LDA OGO
        BRP MAKEPOS
        LDA NOT
        ADD ONE
        STA NOT
        LDA ZERO
        SUB OGO
        STA MODO
        BRA MAKEPOS
MAKEPOS LDA OGT
        BRP LOOP
        LDA NOT
        BRZ NEXT
        SUB TWO
        STA NOT
NEXT    ADD ONE
        STA NOT
        LDA ZERO
        SUB OGT
        STA MODT
        BRP LOOP
LOOP    LDA ZERO
        SUB MODO
        BRP END
        LDA CNT
        ADD ONE
        STA CNT
        LDA MODO
        SUB MODT
        STA MODO
        BRA LOOP
END     LDA NOT
        BRZ END2
        LDA ZERO
        SUB CNT
        OUT
        HLT
END2    LDA CNT
        OUT
        HLT
OGO     DAT 0
OGT     DAT 0
MODO    DAT 0
MODT    DAT 0
CNT     DAT 0
ZERO    DAT 0
ONE     DAT 1
NOT     DAT 0
TWO     DAT 2
