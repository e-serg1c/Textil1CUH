﻿#language: ru

@tree

Функциональность: Установка счета в заявке на оплату

Контекст:
	Дано я подключаю профиль TestClient "Полный доступ"	

Сценарий: Установка счета в заявке на оплату

	И я закрываю все окна клиентского приложения
* Открытие формы списка документов
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.ЗаявкаНаОперацию"
	Тогда открылось окно 'Заявки на операции'
* Открытие документа		
	И в таблице "Список" я перехожу к строке:
		| 'Номер'       | 'Состояние согласования' |
		| 'УХ-10000000' | 'Утвержден'              |
	И в таблице "Список" я выбираю текущую строку
	Когда открылось окно 'Заявка *0000; * руб. к 14.03.2023; АЙ-ТИ ЦЕНТР РЫБАСОВА ООО; Расчеты с контрагентами'
	И я нажимаю на гиперссылку с именем "СтрокаПлатежнаяПозиция"
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Исполнение заявки'
	И я нажимаю кнопку выбора у поля с именем "БанковскийСчетКасса"
	Тогда открылось окно 'Банковские счета: Банковские счета'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'           |
		| 'СБР расчетный РУБ 1284' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Исполнение заявки *'
	И я нажимаю на кнопку с именем 'ФормаКомандаОК'
	Тогда открылось окно 'Заявка *0000; * руб. к 14.03.2023; АЙ-ТИ ЦЕНТР РЫБАСОВА ООО; Расчеты с контрагентами'
	И Я закрываю окно 'Заявка *0000; * руб. к 14.03.2023; АЙ-ТИ ЦЕНТР РЫБАСОВА ООО; Расчеты с контрагентами'