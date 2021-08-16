#!/bin/bash
  
# Скрипт для удобной установки VeraCrypt в Linux.
# Поддержка в случае проблем со скриптом: https://hackware.ru/?p=4559
  
if [ "$1" ]; then
  
    if [ "$1" == "install" ]; then
        echo "Начинаем установку"
  
        temp="$(curl -s https://sourceforge.net/projects/veracrypt/files/)"
        if [ $? -ne '0' ]; then
            echo "Не удалось подключиться к удалённому серверу"
                exit 1
        fi
  
        v=`echo "${temp}" | grep -E -o '/projects/veracrypt/files/VeraCrypt%20[0-9.]+' | head -n 1 | sed 's/\/projects\/veracrypt\/files\/VeraCrypt%20//'`
 
        temp2="$(curl -s https://sourceforge.net/projects/veracrypt/files/VeraCrypt%20$v/)"
        if [ $? -ne '0' ]; then
                exit 1
        fi
  
        LINK=`echo "${temp2}" | grep -i -E -o 'https://sourceforge.net/projects/veracrypt/files/VeraCrypt%20[a-z0-9.-]+/veracrypt-[0-9.-]+-setup.tar.bz2/download' | head -n 1`
  
        wget "$LINK" -O "veracrypt-setup.tar.bz2"
        tar xvjf "veracrypt-setup.tar.bz2"
  
        echo "Имеются 64-битная и 32-битная версия. Какую версию вы хотите установить?"
        echo -e "\t1 - для установки 64-битной"
        echo -e "\t2 - для установки 32-битной"
        read -p "Введите номер: " BITNUM
  
        echo ""
  
        echo "Имеются версия с графическим интерфейсом и консольная версия. Какую версию вы хотите установить?"
        echo -e "\t1 - для установки версии с графическим интерфейсом"
        echo -e "\t2 - для установки консольной версии"
        read -p "Введите номер: " INTNUM
  
        echo ""
  
        if [ $BITNUM -eq 1 ]; then
  
            if [ $INTNUM -eq 1 ]; then
                echo "Начинается установка 64-битной версии с графическим интерфейсом:"
                sudo bash "veracrypt-${v}-setup-gui-x64"
            elif [ $INTNUM -eq 2 ]; then
                echo "Начинается установка 64-битной версии с интерфейсом командной строки:"
                sudo bash "veracrypt-${v}-setup-console-x64"
            else
                echo "Вы ввели неверный номер (интерфейс)."
                exit
            fi
  
        elif [ $BITNUM -eq 2 ]; then
  
            if [ $INTNUM -eq 1 ]; then
                echo "Начинается установка 32-битной версии с графическим интерфейсом:"
                sudo bash "veracrypt-${v}-setup-gui-x32"
            elif [ $INTNUM -eq 2 ]; then
                echo "Начинается установка 32-битной версии с интерфейсом командной строки:"
                sudo bash "veracrypt-${v}-setup-console-x32"
            else
                echo "Вы ввели неверный номер (интерфейс)."
                exit
            fi
  
        else
            echo "Вы ввели неверный номер (битность)."
            exit
        fi
  
        rm "veracrypt-setup.tar.bz2" veracrypt-*-setup-console-x64 veracrypt-*-setup-console-x86 veracrypt-*-setup-gui-x64 veracrypt-*-setup-gui-x86
  
  
    elif [ "$1" == "uninstall" ]; then
        echo "Начинаем удаление"
  
        sudo bash veracrypt-uninstall.sh
  
    elif [ "$1" == "check" ]; then
        echo "Начинаем проверку версий"
  
        temp="$(curl -s https://sourceforge.net/projects/veracrypt/files/)"
        if [ $? -ne '0' ]; then
            echo "Не удалось подключиться к удалённому серверу"
                exit 1
        fi
  
        v=`echo "${temp}" | grep -E -o '/projects/veracrypt/files/VeraCrypt%20[0-9.]+' | head -n 1 | sed 's/\/projects\/veracrypt\/files\/VeraCrypt%20//'`
 
        temp2="$(curl -s https://sourceforge.net/projects/veracrypt/files/VeraCrypt%20$v/)"
        if [ $? -ne '0' ]; then
                exit 1
        fi
        echo "Последняя стабильная версия:"
        echo "${temp2}" | grep -i -E -o 'https://sourceforge.net/projects/veracrypt/files/VeraCrypt%20[a-z0-9.-]+/veracrypt-[0-9.-]+-setup.tar.bz2/download' | head -n 1 | grep -Eo 'veracrypt-[0-9.-]+-setup.tar.bz2' | sed 's/veracrypt-//' | sed 's/-setup.tar.bz2//'
  
        if [ "`which veracrypt`" ]; then
            echo "В системе установлена версия:"
            echo "$(veracrypt --version | sed 's/VeraCrypt //')"
  
        else
            echo "VeraCrypt не установлена в вашей системе."
        fi
  
    else
        echo "Введена неверная команда"
    fi
  
  
else
    echo "Использование:"
    echo ""
    echo "sudo bash VeraCrypt-manager.sh [КОМАНДА]"
    echo ""
    echo "В качестве [КОМАНДЫ] может быть:"
    echo -e "\t\033[1minstall\e[0m - для установки последней версии VeraCrypt"
    echo -e "\t\033[1muninstall\e[0m - для удаления VeraCrypt из системы"
    echo -e "\t\033[1mcheck\e[0m - для проверки последней выпущенной версии VeraCrypt и версии, установленной в системе"
fi
