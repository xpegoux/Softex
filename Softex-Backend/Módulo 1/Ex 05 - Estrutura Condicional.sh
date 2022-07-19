#!/bin/bash

echo "Escolha uma das opções de transporte abaixo: 1, 2 ou 3:"
echo -e "1 - Terrestre | 2 - Aéreo | 3 - Aquático\n"
read T

if [ "$T" != 1 -a "$T" != 2 -a "$T" != 3 ]
then
	echo -e "\nOpção Inválida!"
fi

if [ "$T" = 1 ]
then
	echo -e "\nCabe apenas uma pessoa? Responda SIM ou NÃO:\n"
	read tresp1
		if [ "$tresp1" = "SIM" ]
		then
			echo -e "\nÉ pesado?\n"
		read tresp2
			if [ "$tresp2" = "SIM" ]
			then
				echo -e "\nSeu transporte é um TRATOR!"
			else
				echo -e "\nTem pedal?\n"
				read bresp1

				if [ "$bresp1" = "NÃO" ]
				then
					echo -e "Tente novamente :("
				fi

				if [ "$bresp1" = "SIM" ]
				then
					echo -e "\nSeu transporte é uma BICICLETA!"
				fi
			fi
		else
            echo -e "\n Usa capacete?\n"
            read mresp1
                if [ "$mresp1" = "SIM" ]
                then
                    echo "Seu trasnporte é uma MOTO!"                
                fi
                if [ "$mresp1" = "NÃO" ] 
                then
                    echo -e "\nTem passageiro?\n"
                    read trresp1

                    if [ "$trresp1" = "NÃO" ]
                    then
                        echo "Tente novamente :("
                    fi

                    if [ "$trresp1" = "SIM" ]
                    then
                        echo -e "\nUsa trilho?\n"
                        read trresp2
                            if [ "$trresp2" == "SIM" ]
                            then 
                                echo -e "\nSeu transporte é um TREM!\n" 
                             
                            else
                                echo -e "\nAnda na pista?\n"
                            read coresp1
                                if [ "$coresp1" = "NÃO" ]
                                then
                                    echo "Tente novamente :("
                                fi
                                if [ "$coresp1" = "SIM" ]
                                then
                                    echo -e "\nÉ alto?\n"
                                read coresp2
                                    if [ "$coresp2" = "SIM" ]
                                    then
                                        echo -e "Usa carroceria?\n"
                                    read coresp3
                                        if [ "$coresp3" = "SIM" ]
                                        then
                                            echo -e "Seu transporte é um CAMINHÃO!"
                                        else
                                            echo -e "\nPode ter cobrador?\n"
                                        read coresp4
                                            if [ "$coresp4" = "SIM" ]
                                            then
                                                echo -e "\nSeu transporte é um ÔNIBUS!"
                                            fi
                                            if [ "$coresp4" = "NÃO" ]
                                            then
                                                echo -e "\nTente novamente :("
                                            fi
                                        fi
                                    else
                                        echo -e "\nÉ veículo leve?\n"
                                    read cresp1
                                        if [ "$cresp1" = "NÃO" ]
                                        then
                                            echo "Tente novamente :("
                                        fi  

                                        if [ "$cresp1" = "SIM" ]
                                        then
                                            echo -e "\nSeu transporte é um CARRO!"
                                        fi  
                                    fi                           
                                    
                                fi
                        fi                    
                    fi
                fi
        fi
fi

if [ "$T" = 2 ]
then
    echo -e "\nPrecisa pular? Responda SIM ou NÃO:\n"
    read asaresp1
        if [ "$asaresp1" = "SIM" ]
        then
            echo "Seu transporte é uma ASA DELTA!"
        else
            echo -e "\nViaja dentro?\n"
            read baresp1
                if [ "$baresp1" = "NÃO" ]
                then
                    echo "Tente novamente :("
                fi
                if [ "$baresp1" = "SIM" ]
                then
                    echo -e "\nÉ devagar?\n"
                    read baresp2
                        if [ "$baresp2" = "SIM" ]
                        then
                            echo -e "\nSeu transporte é um BALÃO!"
                        else
                            echo -e "\nTem piloto?\n"
                            read ahresp1
                                if [ "$ahresp1" = "NÃO" ]
                                then
                                    echo -e "\nTente novamente :("
                                fi
                                if [ "$ahresp1" = "SIM" ]
                                then
                                    echo -e "\nPossui asas fixas?\n"
                                    read ahresp2
                                        if [ "$ahresp2" = "SIM" ]
                                        then
                                            echo -e "\nSeu transporte é um AVIÃO!"
                                        else
                                            echo -e "\nFaz vôo vertical?\n"
                                            read ahresp3
                                                if [ "$ahresp3" = "SIM" ]
                                                then
                                                    echo -e "\nSeu transporte é um HELICÓPTERO!"
                                                else
                                                    echo -e "\nTente novamente :("
                                                fi
                                        fi
                                fi
                        fi
                fi
        fi
fi

if [ "$T" = 3 ]
then
    echo -e "\nÉ coberto d'água? Responda SIM ou NÃO:\n"
    read subresp1
        if [ "$subresp1" = "SIM" ]
        then
            echo "Seu transporte é um SUBMARINO!"
        else
            echo -e "\nNavega na água?\n"
            read barco1
                if [ "$barco1" = "NÃO" ]
                then
                    echo "Tente novamente :("
                fi
                if [ "$barco1" = "SIM" ]
                then
                    echo -e "\nPossui vela?\n"
                    read barco2
                        if [ "$barco2" = "SIM" ]
                        then
                            echo -e "\nSeu transporte é um BARCO!"
                        else
                            echo -e "\nTem motor?\n"
                            read nvresp1
                                if [ "$nvresp1" = "NÃO" ]
                                then
                                    echo -e "\nTente novamente :("
                                fi
                                if [ "$nvresp1" = "SIM" ]
                                then
                                    echo -e "\nÉ alto?\n"
                                    read nvresp2
                                        if [ "$nvresp2" = "SIM" ]
                                        then
                                            echo -e "\nSeu transporte é um NAVIO!"
                                        else
                                            echo -e "\nPode ser descoberto?\n"
                                            read nvresp3
                                                if [ "$nvresp3" = "SIM" ]
                                                then
                                                    echo -e "\nSeu transporte é uma LANCHA!"
                                                else
                                                    echo -e "\nTente novamente :("
                                                fi
                                        fi
                                fi
                        fi
                fi
        fi
fi