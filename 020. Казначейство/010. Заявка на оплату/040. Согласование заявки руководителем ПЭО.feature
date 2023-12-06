﻿#language: ru

@tree

Функциональность: Согласование заявки на оплату с ролью Руководитель ПЭО

Контекст:
	Дано я подключаю профиль TestClient "Руководитель ПЭО"	
	
Сценарий: Согласование заявки на оплату

	И я закрываю все окна клиентского приложения
* Открытие формы документа
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.ЗаявкаНаОперацию"
	Тогда открылось окно 'Заявки на операции'
* Заполнение шапки документа
	Когда открылось окно 'Заявки на операции'
	И я нажимаю на кнопку с именем 'ОтобратьПоТекущемуПользователю'
* Проверка наличия документа
	И таблица  "Список" содержит строки:
		| 'Номер'   | 'Состояние согласования' |
		| 'УХ-10000000' | 'На утверждении'        |
* Согласование документа		
	И в таблице "Список" я перехожу к строке:
		| 'Номер'   | 'Состояние согласования' |
		| 'УХ-10000000' | 'На утверждении'        |
	И в таблице "Список" я выбираю текущую строку		
	Тогда открылось окно 'Заявка *0000; * руб. к 14.03.2023; АЙ-ТИ ЦЕНТР РЫБАСОВА ООО; Расчеты с контрагентами'
	И я нажимаю на кнопку с именем 'СогласоватьДокумент'
	Когда открылось окно 'Согласование'
	И я нажимаю на кнопку с именем 'СогласоватьОтчет'
	Тогда открылось окно 'Заявка *0000; * руб. к 14.03.2023; АЙ-ТИ ЦЕНТР РЫБАСОВА ООО; Расчеты с контрагентами'
	И Я закрываю окно 'Заявка *0000; * руб. к 14.03.2023; АЙ-ТИ ЦЕНТР РЫБАСОВА ООО; Расчеты с контрагентами'
	Тогда открылось окно 'Заявки на операции'
	И я нажимаю на кнопку с именем 'ОбновитьСписокЗаявокНаСогласовании'
* Проверка согласования документа
	И таблица  "Список" не содержит строки:
		| 'Номер'   | 'Состояние согласования' |
		| 'УХ-10000000' | 'На утверждении'        |
			

			
	