# Теоретический минимум

1.  IP адрес

    **Расшифровка: Internet Protocol Address**

    IP-адрес — это уникальный идентификатор, присваиваемый каждому устройству в сети для его идентификации и общения с
    другими устройствами через интернет или локальную сеть

    Существует IPv4 и IPv6:

    **IPv4**: 32 бита для адреса - 2<sup>32</sup> возможных адресов

    **IPv6**: 128 бит, призван решает проблемы IPv4

2.  mask

    Разделяет IP адрес на адрес подсети и адрес узла внутри подсети

    Адрес подсети = IP-адрес \* mask (логическое умножение)

    Адрес узла = IP-адрес \* (-mask) (умножение на инвертированную маску)

3.  ip-сети

    Это логические группы, на которые делится пространство IP адресов. Предназначены для организации иерархической адресации в составной IP-сети

4.  ip-broadcast

    **Широковещательный адрес**

    Адрес, который содержит 1 в полях адреса узла. Не участвует в адресации реальных узлов сети.

5.  Определение границ сети IPv4 по адресу и маске

    1. Умножаем IP адрес на маску подсети, получаем адрес подсети
    2. Заменяя нули адреса подсети, которые стояли на месте нулей маски, на 1, получим IP широковещания
    3. Начало диапазона = адрес подсети + 1
    4. Конец диапазона = IP широковещания - 1
