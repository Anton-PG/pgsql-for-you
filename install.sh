#!/usr/bin/env bash
#
##################################################################
#           #####                              #####             #
#         ##     ###       ##########       ###     ##           #
#       ##           ## ###          ### ##           ##         #
#      #   ##    ##   #                  #   ##    ##   #        #
#      # ##         ##                    ##         ## #        #
#     #  #              ##            ##              #  #       #
#     # #                 ####    ####                 # #       #
#     #  #               ## ###  ### ##               #  #       #
#      #  ##                                         ## #        #
#       ##  ##  ##                            ##  ##  ##         #
#         #####   ####                    ####   #####           #
#                 #                          #                   #
#                  ###   ##          ##   ###                    #
#                   #  ##              ##  #                     #
#                   # ####            #### #                     #
#                   ##   #    ####    #   ##                     #
#                        #     ##    ##                          #
#                     ### #   ####   #                           #
#                    #     #        #                            #
#                      ##         ##                             #
##################################################################
#                                                                #
#                                                                #
# Authors:      Antoshin Anton (postgresclsearch@gmail.com)      #
#                                                                #
# Copyright:    2019 Antoshin Anton (postgresclsearch@gmail.com) #
#                                                                #
# License:      GNU General Public License (GPL)                 #
#                                                                #
# Version:      Beta 1.0                                         #
#								 #
# Telegram,Viber: 				+7(901)187-51-47 #
#								 #
# Mail:                             postgresqlclsearch@gmail.com #
#								 #
##################################################################

langlocale=1

HOME=$(pwd)

cp -rp $HOME/conf/shield.one $HOME/dep/shield.cfg
touch $HOME/dep/vmfence.cfg

. $HOME/dep/config.cfg
. $HOME/dep/arg.cfg
. $HOME/dep/vmfence.cfg
source $HOME/doc/lparam
source $HOME/doc/sdoc
source $HOME/doc/comminfo
source $HOME/scr/commandplay
source $HOME/scr/fcinstall
source $HOME/scr/setc1
source $HOME/scr/setc2
source $HOME/scr/setp1
source $HOME/scr/setp2
source $HOME/clr/pcsvmfence
source $HOME/clr/pcsres
source $HOME/scr/fcback
source $HOME/scr/fcclean
source $HOME/scr/shield
source $HOME/scr/vmfence
source $HOME/alg/aset
source $HOME/alg/mas
source $HOME/alg/cct
source $HOME/alg/dst
source $HOME/alg/ecs
source $HOME/alg/eic
source $HOME/alg/maw
source $HOME/alg/mimaws
source $HOME/alg/mwp
source $HOME/alg/mxc
source $HOME/alg/rpc
source $HOME/alg/shb
source $HOME/alg/wbuf
source $HOME/alg/wkm
source $HOME/alg/mos


clear

while :
do

infmenuhello

read menu
case $menu in

1)

	clear
	while :
	do

infsetconf
	
	read menu
	case $menu in
	
		1)
		setc1
		;;
		
		2)
		setc2
		;;
		3)
		less ${HOME}/dep/config.cfg
		;;
		0)
		clear
		break
		;;
	
	esac
	done
	;;

2)

  clear
        while :
        do

infsettuning        

	read menu
        case $menu in

                1)
                setp1
                ;;

                2)
                setp2
                ;;
                3)
                less ${HOME}/dep/setp.cfg
                ;;
                0)
                clear
                break
                ;;

        esac
        done
        ;;
		
3)
	
	
	while :
	do
	
	clear
	
infinstallpg	

	read menu
	case $menu in
	
		1)
		playbook=playbookone
		yumdel=0
                command_play
		;;
		
		2)
		yumdel=1
		shield 2>>$HOME/log/error.log
		. $HOME/dep/shield.cfg
		let deffsh=$shieldh1+$shieldh2+$shieldvip+$shieldi1+$shieldi2
			if [ $deffsh -eq 5 ]	
				then
					playbook=playbookpcs
					command_play
				else
					echo "Instances did not pass preliminary verification, pay attention to [ERROR] in file "${HOME}/set.log")"
			fi
		break
		;;

		0)
		clear
		break
		;;
	
	esac
	done
	;;
	

4)
	crm_mon -Art
	;;

5)
	clear
	while :
	do
	
infbackup	

	read menu
	case $menu in
		
		1)
		back1	
		;;
	
		2)
		back2
		;;

                3)
                backt1
                ;;

                4)
                backt2
                ;;

		0)
		clear
		break
		;;
	
	esac
	done
	;;

6)
clear
        while :
        do

inffence

	read menu
        case $menu in

                1)
		vm_fence_conf
                ;;

                2)
                less $HOME/dep/vmfence.cfg
                ;;

                3)
		. $HOME/dep/vmfence.cfg
                pcs_fence
                ;;

                4)
                backt2
                ;;

                0)
                clear
                break
                ;;

        esac
        done
        ;;

7)
clear
        while :
        do

inflanguage

        read menu
        case $menu in

                1)
                sed -i 's!^langlocale=.*!langlocale='0'!g' $HOME/install.sh
		$HOME/install.sh
                ;;

                2)
                sed -i 's!^langlocale.*!langlocale='1'!g' $HOME/install.sh
                $HOME/install.sh
		;;

                0)
                clear
                break
                ;;

        esac
        done
        ;;
8)

clear
        while :
        do

	infmenuhowsupport

	read menu
        case $menu in

                1)
                clear
		menujoinp
		read -s -n 1
		clear
		;;

		2)
		clear
                menuerrorfind
                read -s -n 1
                clear
		;;

                0)
                clear
                break
                ;;

        esac
        done
        ;;



0)
	clear
	exit 0
	;;

cyc)
	clear
	while :
	do
	
infcyc	

	read menu
	case $menu in
		
		1)
		yum_clean1
		clear
		;;
		
		2)
		yum_clean1
		yum_clean2
		clear
		;;
		
		0)
		clear
		break
		;;
	esac
	done
	;;
	
delpg)
        clear
        while :
        do

infremovepg
	
	read menu
        case $menu in

                d1)
                delpg1
                clear
                ;;

                d2)
                delpg2
		delpg1
                clear
                ;;

                0)
                clear
                break
                ;;
        esac
        done
        ;;

info)
clear
        while :
        do

infinfo

	read menu
        case $menu in

                1)
                less $HOME/doc/einfm
                ;;

                2)
                less $HOME/doc/infm
                ;;
                3)
                
                ;;
                0)
                clear
                break
                ;;

        esac
        done
        ;;

esac
done

