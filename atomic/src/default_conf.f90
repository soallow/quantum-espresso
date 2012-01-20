!
! Copyright (C) 2012 Quantum ESPRESSO group
! This file is distributed under the terms of the
! GNU General Public License. See the file `License'
! in the root directory of the present distribution,
! or http://www.gnu.org/copyleft/gpl.txt .
!
SUBROUTINE default_conf(zed,config)
!
!  This subroutine provides a default electronic configuration for each atom.
!
USE kinds, ONLY : DP
IMPLICIT NONE
CHARACTER(LEN=80), INTENT(OUT) :: config
REAL(DP), INTENT(IN) :: zed
INTEGER :: ized

ized=NINT(zed)
IF (ABS(zed-ized)>1.d-8) CALL errore('default_conf',&
                                          'integer zed is required',1)

IF (ized==1)   config='1s1.0'
IF (ized==2)   config='1s2.0'
IF (ized==3)   config='[He] 2s1.0'
IF (ized==4)   config='[He] 2s2.0'
IF (ized==5)   config='[He] 2s2.0 2p1.0'
IF (ized==6)   config='[He] 2s2.0 2p2.0'
IF (ized==7)   config='[He] 2s2.0 2p3.0'
IF (ized==8)   config='[He] 2s2.0 2p4.0'
IF (ized==9)   config='[He] 2s2.0 2p5.0'
IF (ized==10)  config='[He] 2s2.0 2p6.0'
IF (ized==11)  config='[Ne] 3s1.0'
IF (ized==12)  config='[Ne] 3s2.0'
IF (ized==13)  config='[Ne] 3s2.0 3p1.0'
IF (ized==14)  config='[Ne] 3s2.0 3p2.0'
IF (ized==15)  config='[Ne] 3s2.0 3p3.0'
IF (ized==16)  config='[Ne] 3s2.0 3p4.0'
IF (ized==17)  config='[Ne] 3s2.0 3p5.0'
IF (ized==18)  config='[Ne] 3s2.0 3p6.0'
IF (ized==19)  config='[Ar] 4s1.0'
IF (ized==20)  config='[Ar] 4s2.0'
IF (ized==21)  config='[Ar] 4s2.0 3d1.0'
IF (ized==22)  config='[Ar] 4s2.0 3d2.0'
IF (ized==23)  config='[Ar] 4s2.0 3d3.0'
IF (ized==24)  config='[Ar] 4s1.0 3d5.0'
IF (ized==25)  config='[Ar] 4s2.0 3d5.0'
IF (ized==26)  config='[Ar] 4s2.0 3d6.0'
IF (ized==27)  config='[Ar] 4s2.0 3d7.0'
IF (ized==28)  config='[Ar] 4s2.0 3d8.0'
IF (ized==29)  config='[Ar] 4s1.0 3d10.0'
IF (ized==30)  config='[Ar] 4s2.0 3d10.0'
IF (ized==31)  config='[Ar] 4s2.0 3d10.0 4p1.0'
IF (ized==32)  config='[Ar] 4s2.0 3d10.0 4p2.0'
IF (ized==33)  config='[Ar] 4s2.0 3d10.0 4p3.0'
IF (ized==34)  config='[Ar] 4s2.0 3d10.0 4p4.0'
IF (ized==35)  config='[Ar] 4s2.0 3d10.0 4p5.0'
IF (ized==36)  config='[Ar] 4s2.0 3d10.0 4p6.0'
IF (ized==37)  config='[Kr] 5s1.0'
IF (ized==38)  config='[Kr] 5s2.0'
IF (ized==39)  config='[Kr] 5s2.0 4d1.0'
IF (ized==40)  config='[Kr] 5s2.0 4d2.0'
IF (ized==41)  config='[Kr] 5s1.0 4d4.0'
IF (ized==42)  config='[Kr] 5s1.0 4d5.0'
IF (ized==43)  config='[Kr] 5s2.0 4d5.0'
IF (ized==44)  config='[Kr] 5s1.0 4d7.0'
IF (ized==45)  config='[Kr] 5s1.0 4d8.0'
IF (ized==46)  config='[Kr] 5s0.0 4d10.0'
IF (ized==47)  config='[Kr] 5s1.0 4d10.0'
IF (ized==48)  config='[Kr] 5s2.0 4d10.0'
IF (ized==49)  config='[Kr] 5s2.0 4d10.0 5p1.0'
IF (ized==50)  config='[Kr] 5s2.0 4d10.0 5p2.0'
IF (ized==51)  config='[Kr] 5s2.0 4d10.0 5p3.0'
IF (ized==52)  config='[Kr] 5s2.0 4d10.0 5p4.0'
IF (ized==53)  config='[Kr] 5s2.0 4d10.0 5p5.0'
IF (ized==54)  config='[Kr] 5s2.0 4d10.0 5p6.0'
IF (ized==55)  config='[Xe] 6s1.0'
IF (ized==56)  config='[Xe] 6s2.0'
IF (ized==57)  config='[Xe] 6s2.0 5d1.0 4f0.0'
IF (ized==58)  config='[Xe] 6s2.0 5d1.0 4f1.0'
IF (ized==59)  config='[Xe] 6s2.0 5d0.0 4f3.0'
IF (ized==60)  config='[Xe] 6s2.0 5d0.0 4f4.0'
IF (ized==61)  config='[Xe] 6s2.0 5d0.0 4f5.0'
IF (ized==62)  config='[Xe] 6s2.0 5d0.0 4f6.0'
IF (ized==63)  config='[Xe] 6s2.0 5d0.0 4f7.0'
IF (ized==64)  config='[Xe] 6s2.0 5d1.0 4f7.0'
IF (ized==65)  config='[Xe] 6s2.0 5d0.0 4f9.0'
IF (ized==66)  config='[Xe] 6s2.0 5d0.0 4f10.0'
IF (ized==67)  config='[Xe] 6s2.0 5d0.0 4f11.0'
IF (ized==68)  config='[Xe] 6s2.0 5d0.0 4f12.0'
IF (ized==69)  config='[Xe] 6s2.0 5d0.0 4f13.0'
IF (ized==70)  config='[Xe] 6s2.0 5d0.0 4f14.0'
IF (ized==71)  config='[Xe] 6s2.0 5d1.0 4f14.0'
IF (ized==72)  config='[Xe] 6s2.0 5d2.0 4f14.0'
IF (ized==73)  config='[Xe] 6s2.0 5d3.0 4f14.0'
IF (ized==74)  config='[Xe] 6s2.0 5d4.0 4f14.0'
IF (ized==75)  config='[Xe] 6s2.0 5d5.0 4f14.0'
IF (ized==76)  config='[Xe] 6s2.0 5d6.0 4f14.0'
IF (ized==77)  config='[Xe] 6s2.0 5d7.0 4f14.0'
IF (ized==78)  config='[Xe] 6s1.0 5d9.0 4f14.0'
IF (ized==79)  config='[Xe] 6s1.0 5d10.0 4f14.0'
IF (ized==80)  config='[Xe] 6s2.0 5d10.0 4f14.0'
IF (ized==81)  config='[Xe] 6s2.0 5d10.0 4f14.0 6p1.0'
IF (ized==82)  config='[Xe] 6s2.0 5d10.0 4f14.0 6p2.0'
IF (ized==83)  config='[Xe] 6s2.0 5d10.0 4f14.0 6p3.0'
IF (ized==84)  config='[Xe] 6s2.0 5d10.0 4f14.0 6p4.0'
IF (ized==85)  config='[Xe] 6s2.0 5d10.0 4f14.0 6p5.0'
IF (ized==86)  config='[Xe] 6s2.0 5d10.0 4f14.0 6p6.0'
IF (ized==87)  config='[Rn] 7s1.0'
IF (ized==88)  config='[Rn] 7s2.0'
IF (ized==89)  config='[Rn] 7s2.0 6d1.0 5f0.0'
IF (ized==90)  config='[Rn] 7s2.0 6d2.0 5f0.0'
IF (ized==91)  config='[Rn] 7s2.0 6d1.0 5f2.0'
IF (ized==92)  config='[Rn] 7s2.0 6d1.0 5f3.0'
IF (ized==93)  config='[Rn] 7s2.0 6d1.0 5f4.0'
IF (ized==94)  config='[Rn] 7s2.0 6d0.0 5f6.0'
IF (ized==95)  config='[Rn] 7s2.0 6d0.0 5f7.0'
IF (ized==96)  config='[Rn] 7s2.0 6d1.0 5f7.0'
IF (ized==97)  config='[Rn] 7s2.0 6d0.0 5f9.0'
IF (ized==98)  config='[Rn] 7s2.0 6d0.0 5f10.0'
IF (ized==99)  config='[Rn] 7s2.0 6d0.0 5f11.0'
IF (ized==100) config='[Rn] 7s2.0 6d0.0 5f12.0'
IF (ized==101) config='[Rn] 7s2.0 6d0.0 5f13.0'
IF (ized==102) config='[Rn] 7s2.0 6d0.0 5f14.0'
IF (ized==103) config='[Rn] 7s2.0 7p1.0 5f14.0'

RETURN
END SUBROUTINE default_conf