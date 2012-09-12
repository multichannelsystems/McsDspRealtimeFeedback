;/*   ==========================================================
; *   Copyright (c) Texas Instruments Inc 2004, 2005
; *
; *   Use of this software is controlled by the terms and conditions found
; *   in the license agreement under which this software has been supplied
; *   priovided
; *   ==========================================================
; */
;****************************************************************************
;*                    E X P O R T E D     F U N C T I O N S
;****************************************************************************
    .global __CSL_endCriticalSection

;****************************************************************************
;*                         P A S S - T H R U   C O D E
;****************************************************************************

  .text
;****************************************************************************
;*                       P U B L I C   F U N C T I O N S
;****************************************************************************

;****************************************************************************
;*   void
;*       _CSL_endCriticalSection (
;*           void
;*   )
;****************************************************************************


__CSL_endCriticalSection:
    
    bnop b3,1
    mvc tsr, b0
    or a4,b0,b0
    mvc b0,tsr
    rint
    

;****************************************************************************
;* End of _CSL_endCriticalSection.asm
;****************************************************************************
