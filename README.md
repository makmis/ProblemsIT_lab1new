# ProblemsIT_lab1new
# Современные проблемы информатики и вычислительной техники. Лабораторная №1.
 Для утилит chfn, chsh, pasword:
 1. снять SUID бит, передающий права суперпользователя при их исполнении.
 2. назначить утилитам минимально необходимые capabilities, достаточные для их исполнения.


выполнение:
 1. насписал скрипт, который снимает DUID bit с заданных утилит и устанавливает capabilities, для этого в скрипте используется утилита setcup из пакета libcap2-bin.
 2. загрузил пакет passwd
 3. модифицировал пакет, добавив команды в файл DEBIAN/postinst из capabilities .sh
  













 
